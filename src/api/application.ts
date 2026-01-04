/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import {
  useMutation,
  useQuery
} from '@tanstack/react-query';
import type {
  DataTag,
  DefinedInitialDataOptions,
  DefinedUseQueryResult,
  MutationFunction,
  QueryClient,
  QueryFunction,
  QueryKey,
  UndefinedInitialDataOptions,
  UseMutationOptions,
  UseMutationResult,
  UseQueryOptions,
  UseQueryResult
} from '@tanstack/react-query';

import type {
  CreateApplicationDto
} from './model';

import { customInstance } from '../utils/custom-axios';
import type { ErrorType } from '../utils/custom-axios';



type SecondParameter<T extends (...args: never) => unknown> = Parameters<T>[1];



export const applicationControllerCreateApplication = (
    createApplicationDto: CreateApplicationDto,
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<void>(
      {url: `/application/create`, method: 'POST',
      headers: {'Content-Type': 'application/json', },
      data: createApplicationDto, signal
    },
      options);
    }
  


export const getApplicationControllerCreateApplicationMutationOptions = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerCreateApplication>>, TError,{data: CreateApplicationDto}, TContext>, request?: SecondParameter<typeof customInstance>}
): UseMutationOptions<Awaited<ReturnType<typeof applicationControllerCreateApplication>>, TError,{data: CreateApplicationDto}, TContext> => {

const mutationKey = ['applicationControllerCreateApplication'];
const {mutation: mutationOptions, request: requestOptions} = options ?
      options.mutation && 'mutationKey' in options.mutation && options.mutation.mutationKey ?
      options
      : {...options, mutation: {...options.mutation, mutationKey}}
      : {mutation: { mutationKey, }, request: undefined};

      


      const mutationFn: MutationFunction<Awaited<ReturnType<typeof applicationControllerCreateApplication>>, {data: CreateApplicationDto}> = (props) => {
          const {data} = props ?? {};

          return  applicationControllerCreateApplication(data,requestOptions)
        }

        


  return  { mutationFn, ...mutationOptions }}

    export type ApplicationControllerCreateApplicationMutationResult = NonNullable<Awaited<ReturnType<typeof applicationControllerCreateApplication>>>
    export type ApplicationControllerCreateApplicationMutationBody = CreateApplicationDto
    export type ApplicationControllerCreateApplicationMutationError = ErrorType<unknown>

    export const useApplicationControllerCreateApplication = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerCreateApplication>>, TError,{data: CreateApplicationDto}, TContext>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient): UseMutationResult<
        Awaited<ReturnType<typeof applicationControllerCreateApplication>>,
        TError,
        {data: CreateApplicationDto},
        TContext
      > => {

      const mutationOptions = getApplicationControllerCreateApplicationMutationOptions(options);

      return useMutation(mutationOptions, queryClient);
    }
    export const applicationControllerGetAllMyApplications = (
    
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<void>(
      {url: `/application/mine`, method: 'GET', signal
    },
      options);
    }
  



export const getApplicationControllerGetAllMyApplicationsQueryKey = () => {
    return [
    `/application/mine`
    ] as const;
    }

    
export const getApplicationControllerGetAllMyApplicationsQueryOptions = <TData = Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError = ErrorType<unknown>>( options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
) => {

const {query: queryOptions, request: requestOptions} = options ?? {};

  const queryKey =  queryOptions?.queryKey ?? getApplicationControllerGetAllMyApplicationsQueryKey();

  

    const queryFn: QueryFunction<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>> = ({ signal }) => applicationControllerGetAllMyApplications(requestOptions, signal);

      

      

   return  { queryKey, queryFn, ...queryOptions} as UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError, TData> & { queryKey: DataTag<QueryKey, TData, TError> }
}

export type ApplicationControllerGetAllMyApplicationsQueryResult = NonNullable<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>>
export type ApplicationControllerGetAllMyApplicationsQueryError = ErrorType<unknown>


export function useApplicationControllerGetAllMyApplications<TData = Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError = ErrorType<unknown>>(
  options: { query:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError, TData>> & Pick<
        DefinedInitialDataOptions<
          Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>,
          TError,
          Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  DefinedUseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useApplicationControllerGetAllMyApplications<TData = Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError = ErrorType<unknown>>(
  options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError, TData>> & Pick<
        UndefinedInitialDataOptions<
          Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>,
          TError,
          Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useApplicationControllerGetAllMyApplications<TData = Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError = ErrorType<unknown>>(
  options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }

export function useApplicationControllerGetAllMyApplications<TData = Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError = ErrorType<unknown>>(
  options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetAllMyApplications>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient 
 ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> } {

  const queryOptions = getApplicationControllerGetAllMyApplicationsQueryOptions(options)

  const query = useQuery(queryOptions, queryClient) as  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> };

  query.queryKey = queryOptions.queryKey ;

  return query;
}



export const applicationControllerGetApplication = (
    id: string,
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<void>(
      {url: `/application/${id}`, method: 'GET', signal
    },
      options);
    }
  



export const getApplicationControllerGetApplicationQueryKey = (id?: string,) => {
    return [
    `/application/${id}`
    ] as const;
    }

    
export const getApplicationControllerGetApplicationQueryOptions = <TData = Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError = ErrorType<unknown>>(id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
) => {

const {query: queryOptions, request: requestOptions} = options ?? {};

  const queryKey =  queryOptions?.queryKey ?? getApplicationControllerGetApplicationQueryKey(id);

  

    const queryFn: QueryFunction<Awaited<ReturnType<typeof applicationControllerGetApplication>>> = ({ signal }) => applicationControllerGetApplication(id, requestOptions, signal);

      

      

   return  { queryKey, queryFn, enabled: !!(id), ...queryOptions} as UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError, TData> & { queryKey: DataTag<QueryKey, TData, TError> }
}

export type ApplicationControllerGetApplicationQueryResult = NonNullable<Awaited<ReturnType<typeof applicationControllerGetApplication>>>
export type ApplicationControllerGetApplicationQueryError = ErrorType<unknown>


export function useApplicationControllerGetApplication<TData = Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError = ErrorType<unknown>>(
 id: string, options: { query:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError, TData>> & Pick<
        DefinedInitialDataOptions<
          Awaited<ReturnType<typeof applicationControllerGetApplication>>,
          TError,
          Awaited<ReturnType<typeof applicationControllerGetApplication>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  DefinedUseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useApplicationControllerGetApplication<TData = Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError = ErrorType<unknown>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError, TData>> & Pick<
        UndefinedInitialDataOptions<
          Awaited<ReturnType<typeof applicationControllerGetApplication>>,
          TError,
          Awaited<ReturnType<typeof applicationControllerGetApplication>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useApplicationControllerGetApplication<TData = Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError = ErrorType<unknown>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }

export function useApplicationControllerGetApplication<TData = Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError = ErrorType<unknown>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetApplication>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient 
 ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> } {

  const queryOptions = getApplicationControllerGetApplicationQueryOptions(id,options)

  const query = useQuery(queryOptions, queryClient) as  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> };

  query.queryKey = queryOptions.queryKey ;

  return query;
}



export const applicationControllerGetShareLink = (
    id: string,
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<void>(
      {url: `/application/${id}/share`, method: 'GET', signal
    },
      options);
    }
  



export const getApplicationControllerGetShareLinkQueryKey = (id?: string,) => {
    return [
    `/application/${id}/share`
    ] as const;
    }

    
export const getApplicationControllerGetShareLinkQueryOptions = <TData = Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError = ErrorType<unknown>>(id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
) => {

const {query: queryOptions, request: requestOptions} = options ?? {};

  const queryKey =  queryOptions?.queryKey ?? getApplicationControllerGetShareLinkQueryKey(id);

  

    const queryFn: QueryFunction<Awaited<ReturnType<typeof applicationControllerGetShareLink>>> = ({ signal }) => applicationControllerGetShareLink(id, requestOptions, signal);

      

      

   return  { queryKey, queryFn, enabled: !!(id), ...queryOptions} as UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError, TData> & { queryKey: DataTag<QueryKey, TData, TError> }
}

export type ApplicationControllerGetShareLinkQueryResult = NonNullable<Awaited<ReturnType<typeof applicationControllerGetShareLink>>>
export type ApplicationControllerGetShareLinkQueryError = ErrorType<unknown>


export function useApplicationControllerGetShareLink<TData = Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError = ErrorType<unknown>>(
 id: string, options: { query:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError, TData>> & Pick<
        DefinedInitialDataOptions<
          Awaited<ReturnType<typeof applicationControllerGetShareLink>>,
          TError,
          Awaited<ReturnType<typeof applicationControllerGetShareLink>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  DefinedUseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useApplicationControllerGetShareLink<TData = Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError = ErrorType<unknown>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError, TData>> & Pick<
        UndefinedInitialDataOptions<
          Awaited<ReturnType<typeof applicationControllerGetShareLink>>,
          TError,
          Awaited<ReturnType<typeof applicationControllerGetShareLink>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useApplicationControllerGetShareLink<TData = Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError = ErrorType<unknown>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }

export function useApplicationControllerGetShareLink<TData = Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError = ErrorType<unknown>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof applicationControllerGetShareLink>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient 
 ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> } {

  const queryOptions = getApplicationControllerGetShareLinkQueryOptions(id,options)

  const query = useQuery(queryOptions, queryClient) as  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> };

  query.queryKey = queryOptions.queryKey ;

  return query;
}



export const applicationControllerJoinApplication = (
    id: string,
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<void>(
      {url: `/application/${id}/join`, method: 'POST', signal
    },
      options);
    }
  


export const getApplicationControllerJoinApplicationMutationOptions = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerJoinApplication>>, TError,{id: string}, TContext>, request?: SecondParameter<typeof customInstance>}
): UseMutationOptions<Awaited<ReturnType<typeof applicationControllerJoinApplication>>, TError,{id: string}, TContext> => {

const mutationKey = ['applicationControllerJoinApplication'];
const {mutation: mutationOptions, request: requestOptions} = options ?
      options.mutation && 'mutationKey' in options.mutation && options.mutation.mutationKey ?
      options
      : {...options, mutation: {...options.mutation, mutationKey}}
      : {mutation: { mutationKey, }, request: undefined};

      


      const mutationFn: MutationFunction<Awaited<ReturnType<typeof applicationControllerJoinApplication>>, {id: string}> = (props) => {
          const {id} = props ?? {};

          return  applicationControllerJoinApplication(id,requestOptions)
        }

        


  return  { mutationFn, ...mutationOptions }}

    export type ApplicationControllerJoinApplicationMutationResult = NonNullable<Awaited<ReturnType<typeof applicationControllerJoinApplication>>>
    
    export type ApplicationControllerJoinApplicationMutationError = ErrorType<unknown>

    export const useApplicationControllerJoinApplication = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerJoinApplication>>, TError,{id: string}, TContext>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient): UseMutationResult<
        Awaited<ReturnType<typeof applicationControllerJoinApplication>>,
        TError,
        {id: string},
        TContext
      > => {

      const mutationOptions = getApplicationControllerJoinApplicationMutationOptions(options);

      return useMutation(mutationOptions, queryClient);
    }
    export const applicationControllerSendApplication = (
    id: string,
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<void>(
      {url: `/application/${id}/send`, method: 'POST', signal
    },
      options);
    }
  


export const getApplicationControllerSendApplicationMutationOptions = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerSendApplication>>, TError,{id: string}, TContext>, request?: SecondParameter<typeof customInstance>}
): UseMutationOptions<Awaited<ReturnType<typeof applicationControllerSendApplication>>, TError,{id: string}, TContext> => {

const mutationKey = ['applicationControllerSendApplication'];
const {mutation: mutationOptions, request: requestOptions} = options ?
      options.mutation && 'mutationKey' in options.mutation && options.mutation.mutationKey ?
      options
      : {...options, mutation: {...options.mutation, mutationKey}}
      : {mutation: { mutationKey, }, request: undefined};

      


      const mutationFn: MutationFunction<Awaited<ReturnType<typeof applicationControllerSendApplication>>, {id: string}> = (props) => {
          const {id} = props ?? {};

          return  applicationControllerSendApplication(id,requestOptions)
        }

        


  return  { mutationFn, ...mutationOptions }}

    export type ApplicationControllerSendApplicationMutationResult = NonNullable<Awaited<ReturnType<typeof applicationControllerSendApplication>>>
    
    export type ApplicationControllerSendApplicationMutationError = ErrorType<unknown>

    export const useApplicationControllerSendApplication = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerSendApplication>>, TError,{id: string}, TContext>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient): UseMutationResult<
        Awaited<ReturnType<typeof applicationControllerSendApplication>>,
        TError,
        {id: string},
        TContext
      > => {

      const mutationOptions = getApplicationControllerSendApplicationMutationOptions(options);

      return useMutation(mutationOptions, queryClient);
    }
    export const applicationControllerReviewApplication = (
    id: string,
 options?: SecondParameter<typeof customInstance>,) => {
      
      
      return customInstance<void>(
      {url: `/application/${id}/review`, method: 'PATCH'
    },
      options);
    }
  


export const getApplicationControllerReviewApplicationMutationOptions = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerReviewApplication>>, TError,{id: string}, TContext>, request?: SecondParameter<typeof customInstance>}
): UseMutationOptions<Awaited<ReturnType<typeof applicationControllerReviewApplication>>, TError,{id: string}, TContext> => {

const mutationKey = ['applicationControllerReviewApplication'];
const {mutation: mutationOptions, request: requestOptions} = options ?
      options.mutation && 'mutationKey' in options.mutation && options.mutation.mutationKey ?
      options
      : {...options, mutation: {...options.mutation, mutationKey}}
      : {mutation: { mutationKey, }, request: undefined};

      


      const mutationFn: MutationFunction<Awaited<ReturnType<typeof applicationControllerReviewApplication>>, {id: string}> = (props) => {
          const {id} = props ?? {};

          return  applicationControllerReviewApplication(id,requestOptions)
        }

        


  return  { mutationFn, ...mutationOptions }}

    export type ApplicationControllerReviewApplicationMutationResult = NonNullable<Awaited<ReturnType<typeof applicationControllerReviewApplication>>>
    
    export type ApplicationControllerReviewApplicationMutationError = ErrorType<unknown>

    export const useApplicationControllerReviewApplication = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof applicationControllerReviewApplication>>, TError,{id: string}, TContext>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient): UseMutationResult<
        Awaited<ReturnType<typeof applicationControllerReviewApplication>>,
        TError,
        {id: string},
        TContext
      > => {

      const mutationOptions = getApplicationControllerReviewApplicationMutationOptions(options);

      return useMutation(mutationOptions, queryClient);
    }
    