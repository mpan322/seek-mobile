import { queryClient } from "@/app/_layout";
import { getApplicationControllerGetAllMyApplicationsQueryKey } from "@/src/api/seek-api/application";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { getListingsControllerGetAllVerifiedListingsQueryKey, getListingsControllerGetLikedQueryKey, useListingsControllerLikeListing, useListingsControllerUnlikeListing } from "@/src/api/seek-api/listings";
import { ApplicationDto, LikedListingsDto, Listing } from "@/src/api/seek-api/model";

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
        const applied = queryClient.getQueryData<ApplicationDto[]>(
          getApplicationControllerGetAllMyApplicationsQueryKey()
        );

        const listing = verified?.find(elem => elem._id === id)
          ?? applied?.find(elem => elem.listing._id === id)?.listing
          ?? liked?.data.find(elem => elem._id === id);

        queryClient.setQueriesData<Listing[]>(
          {
            queryKey: getListingsControllerGetAllVerifiedListingsQueryKey(),
            exact: false
          },
          (curr) => {
            if (!curr) return curr;
            const old = updateLike({
              listingId: id,
              userId: user._id,
              listings: curr,
            });
            return old;
          }
        );
        queryClient.setQueriesData<LikedListingsDto>(
          {
            queryKey: getListingsControllerGetLikedQueryKey(),
            exact: false
          },
          (curr) => {
            if (!curr || !listing) return curr;
            if (!curr.data.find(elem => elem._id === id)) return curr;
            return {
              ...curr,
              data: [...curr.data, listing],
            }
          }
        );
        queryClient.setQueriesData<ApplicationDto[]>(
          {
            queryKey: getApplicationControllerGetAllMyApplicationsQueryKey(),
            exact: false
          },
          (curr) => {
            if (!curr) return curr;
            return curr.map(app => {
              if (app.listing._id !== id) {
                return app;
              }
              if (app.listing.likedBy.includes(user._id)) {
                return app;
              }
              return {
                ...app,
                listing: {
                  ...app.listing,
                  likedBy: [...app.listing.likedBy, user._id]
                }
              };
            })
          }
        );

        return {
          prev: {
            liked,
            verified,
            applied,
          }
        };
      },
      onError(_, __, ctx) {
        queryClient.setQueryData<Listing[]>(
          getListingsControllerGetAllVerifiedListingsQueryKey(),
          ctx?.prev.verified
        );
        queryClient.setQueryData<LikedListingsDto>(
          getListingsControllerGetLikedQueryKey(),
          ctx?.prev.liked
        );
        queryClient.setQueryData<ApplicationDto[]>(
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
        const applied = queryClient.getQueryData<ApplicationDto[]>(
          getApplicationControllerGetAllMyApplicationsQueryKey()
        );

        queryClient.setQueriesData<Listing[]>(
          {
            queryKey: getListingsControllerGetAllVerifiedListingsQueryKey(),
            exact: false
          },
          (curr) => {
            if (!curr) return curr;
            const old = updateUnlike({
              listingId: id,
              userId: user._id,
              listings: curr,
            });
            return old;
          }
        );
        queryClient.setQueriesData<LikedListingsDto>(
          {
            queryKey: getListingsControllerGetLikedQueryKey(),
            exact: false
          },
          (curr) => {
            if (!curr) return curr;
            return {
              ...curr,
              data: curr.data.filter(elem => elem._id !== id),
            }
          }
        );
        queryClient.setQueriesData<ApplicationDto[]>(
          {
            queryKey: getApplicationControllerGetAllMyApplicationsQueryKey(),
            exact: false
          },
          (curr) => {
            if (!curr) return curr;
            return curr.map(app => {
              console.log("===================");
              if (app.listing._id !== id) {
                console.log("skipping");
                return app;
              }
              console.log("found one skipping");
              console.log("===================");
              return {
                ...app,
                listing: {
                  ...app.listing,
                  likedBy: app.listing.likedBy.filter(id => id !== user._id)
                }
              }
            })
          }
        );

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
        queryClient.setQueryData<ApplicationDto[]>(
          getApplicationControllerGetAllMyApplicationsQueryKey(),
          ctx?.prev.applied
        );
      },
      onSettled() {
        queryClient.invalidateQueries({ queryKey: getListingsControllerGetAllVerifiedListingsQueryKey() });
        queryClient.invalidateQueries({ queryKey: getListingsControllerGetLikedQueryKey() });
        queryClient.invalidateQueries({ queryKey: getApplicationControllerGetAllMyApplicationsQueryKey() });
      }
    }
  });
}
