import { queryClient } from "@/app/_layout";
import { getApplicationControllerGetAllMyApplicationsQueryKey } from "@/src/api/seek-api/application";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { getListingsControllerGetAllVerifiedListingsQueryKey, getListingsControllerGetLikedQueryKey, useListingsControllerLikeListing, useListingsControllerUnlikeListing } from "@/src/api/seek-api/listings";
import { LikedListingsDto, Listing } from "@/src/api/seek-api/model";

type UpdateLikeProps = {
  listings: Listing[];
  listingId: string;
  userId: string;
}

function updateLike({
  listingId,
  userId,
  listings
}: UpdateLikeProps) {
  return listings.map(listing => {
    if (listing._id !== listingId) {
      return listing;
    }
    if (listing.likedBy.includes(userId)) {
      return listing;
    }

    return {
      ...listing,
      likedBy: [...listing.likedBy, userId],
    };
  });
}

function updateUnlike({
  listingId,
  userId,
  listings
}: UpdateLikeProps) {
  return listings.map(listing => {
    if (listing._id !== listingId) {
      return listing;
    }

    return {
      ...listing,
      likedBy: listing.likedBy.filter(uid => uid !== userId)
    };
  })
}

export function useLike() {
  const { data: user } = useAuthControllerCurrentUser();

  return useListingsControllerLikeListing({
    mutation: {
      async onMutate({ id }) {
        if (!user) {
          return;
        }
        console.log("on mutate running");

        await queryClient.cancelQueries({
          queryKey: getListingsControllerGetAllVerifiedListingsQueryKey()
        });
        await queryClient.cancelQueries({
          queryKey: getListingsControllerGetLikedQueryKey()
        });
        await queryClient.cancelQueries({
          queryKey: getApplicationControllerGetAllMyApplicationsQueryKey()
        });

        const verified = queryClient.getQueryData<Listing[]>(
          getListingsControllerGetAllVerifiedListingsQueryKey()
        );
        const liked = queryClient.getQueryData<LikedListingsDto>(
          getListingsControllerGetLikedQueryKey()
        );
        const applied = queryClient.getQueryData<Listing[]>(
          getApplicationControllerGetAllMyApplicationsQueryKey()
        );
        console.log(
          "keys found exist",
          verified != undefined,
          liked != undefined,
          applied != undefined
        );

        const listing = verified?.find(elem => elem._id === id)
          ?? applied?.find(elem => elem._id === id)
          ?? liked?.data.find(elem => elem._id === id);

        queryClient.setQueriesData<Listing[]>(
          {
            queryKey: getListingsControllerGetAllVerifiedListingsQueryKey(),
            exact: false
          },
          (curr) => {
            console.log("set query data running: all verified", curr?.length)
            if (!curr) return curr;
            console.log("set query data running: all verified (not undef)")
            const old = updateLike({
              listingId: id,
              userId: user._id,
              listings: curr,
            });
            console.log("NOTHING CHANGED", old === curr);
            return old;
          }
        );
        queryClient.setQueriesData<LikedListingsDto>(
          {
            queryKey: getListingsControllerGetLikedQueryKey(),
            exact: false
          },
          (curr) => {
            console.log("set query data running: get liked")
            if (!curr || !listing) return curr;
            if (curr.data.find(elem => elem._id === id)) return curr;
            return {
              ...curr,
              data: [...curr.data, listing],
            }
          }
        );
        queryClient.setQueriesData<Listing[]>(
          {
            queryKey: getApplicationControllerGetAllMyApplicationsQueryKey(),
            exact: false
          },
          (curr) => {
            console.log("set query data running: get my applications")
            if (!curr) return curr;
            return updateLike({
              listingId: id,
              userId: user._id,
              listings: curr,
            });
          }
        );

        console.log("on mutate end")
        return {
          prev: {
            liked,
            verified,
            applied,
          }
        };
      },
      onError(_, __, ctx) {
        console.log("ERROR OCCURED")
        queryClient.setQueryData<Listing[]>(
          getListingsControllerGetAllVerifiedListingsQueryKey(),
          ctx?.prev.verified
        );
        queryClient.setQueryData<LikedListingsDto>(
          getListingsControllerGetLikedQueryKey(),
          ctx?.prev.liked
        );
        queryClient.setQueryData<Listing[]>(
          getApplicationControllerGetAllMyApplicationsQueryKey(),
          ctx?.prev.applied
        );
      }
    }
  });
}

export function useUnlike() {
  const { data: user } = useAuthControllerCurrentUser();

  return useListingsControllerUnlikeListing({
    mutation: {
      async onMutate({ id }) {
        if (!user) {
          return;
        }
        console.log("on mutate running");

        await queryClient.cancelQueries({
          queryKey: getListingsControllerGetAllVerifiedListingsQueryKey()
        });
        await queryClient.cancelQueries({
          queryKey: getListingsControllerGetLikedQueryKey()
        });
        await queryClient.cancelQueries({
          queryKey: getApplicationControllerGetAllMyApplicationsQueryKey()
        });

        const verified = queryClient.getQueryData<Listing[]>(
          getListingsControllerGetAllVerifiedListingsQueryKey()
        );
        const liked = queryClient.getQueryData<LikedListingsDto>(
          getListingsControllerGetLikedQueryKey()
        );
        const applied = queryClient.getQueryData<Listing[]>(
          getApplicationControllerGetAllMyApplicationsQueryKey()
        );
        console.log(
          "keys found exist",
          verified != undefined,
          liked != undefined,
          applied != undefined
        );


        queryClient.setQueriesData<Listing[]>(
          {
            queryKey: getListingsControllerGetAllVerifiedListingsQueryKey(),
            exact: false
          },
          (curr) => {
            console.log("set query data running: all verified", curr?.length)
            if (!curr) return curr;
            console.log("set query data running: all verified (not undef)")
            const old = updateUnlike({
              listingId: id,
              userId: user._id,
              listings: curr,
            });
            console.log("NOTHING CHANGED", old === curr);
            return old;
          }
        );
        queryClient.setQueriesData<LikedListingsDto>(
          {
            queryKey: getListingsControllerGetLikedQueryKey(),
            exact: false
          },
          (curr) => {
            console.log("set query data running");
            if (!curr) return curr;
            return {
              ...curr,
              data: curr.data.filter(elem => elem._id !== id),
            }
          }
        );
        queryClient.setQueriesData<Listing[]>(
          {
            queryKey: getApplicationControllerGetAllMyApplicationsQueryKey(),
            exact: false
          },
          (curr) => {
            console.log("set query data running");
            if (!curr) return curr;
            return updateUnlike({
              listingId: id,
              userId: user._id,
              listings: curr,
            });
          }
        );

        console.log("on mutate end");
        return {
          prev: {
            liked,
            verified,
            applied,
          }
        };
      },
      onError(_, __, ctx) {
        console.log("ERROR OCCURED")
        queryClient.setQueryData<Listing[]>(
          getListingsControllerGetAllVerifiedListingsQueryKey(),
          ctx?.prev.verified
        );
        queryClient.setQueryData<LikedListingsDto>(
          getListingsControllerGetLikedQueryKey(),
          ctx?.prev.liked
        );
        queryClient.setQueryData<Listing[]>(
          getApplicationControllerGetAllMyApplicationsQueryKey(),
          ctx?.prev.applied
        );
      }
    }
  });
}
