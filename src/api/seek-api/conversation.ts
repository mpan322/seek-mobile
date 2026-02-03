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
  ErrorDto,
  MessageDto,
  SendMessageDto
} from './model';

import { customInstance } from '../../utils/custom-axios';
import type { ErrorType } from '../../utils/custom-axios';



type SecondParameter<T extends (...args: never) => unknown> = Parameters<T>[1];



export const conversationControllerSendMessage = (
    id: string,
    sendMessageDto: SendMessageDto,
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<void>(
      {url: `/conversation/${id}/sendMessage`, method: 'POST',
      headers: {'Content-Type': 'application/json', },
      data: sendMessageDto, signal
    },
      options);
    }
  


export const getConversationControllerSendMessageMutationOptions = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof conversationControllerSendMessage>>, TError,{id: string;data: SendMessageDto}, TContext>, request?: SecondParameter<typeof customInstance>}
): UseMutationOptions<Awaited<ReturnType<typeof conversationControllerSendMessage>>, TError,{id: string;data: SendMessageDto}, TContext> => {

const mutationKey = ['conversationControllerSendMessage'];
const {mutation: mutationOptions, request: requestOptions} = options ?
      options.mutation && 'mutationKey' in options.mutation && options.mutation.mutationKey ?
      options
      : {...options, mutation: {...options.mutation, mutationKey}}
      : {mutation: { mutationKey, }, request: undefined};

      


      const mutationFn: MutationFunction<Awaited<ReturnType<typeof conversationControllerSendMessage>>, {id: string;data: SendMessageDto}> = (props) => {
          const {id,data} = props ?? {};

          return  conversationControllerSendMessage(id,data,requestOptions)
        }

        


  return  { mutationFn, ...mutationOptions }}

    export type ConversationControllerSendMessageMutationResult = NonNullable<Awaited<ReturnType<typeof conversationControllerSendMessage>>>
    export type ConversationControllerSendMessageMutationBody = SendMessageDto
    export type ConversationControllerSendMessageMutationError = ErrorType<unknown>

    export const useConversationControllerSendMessage = <TError = ErrorType<unknown>,
    TContext = unknown>(options?: { mutation?:UseMutationOptions<Awaited<ReturnType<typeof conversationControllerSendMessage>>, TError,{id: string;data: SendMessageDto}, TContext>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient): UseMutationResult<
        Awaited<ReturnType<typeof conversationControllerSendMessage>>,
        TError,
        {id: string;data: SendMessageDto},
        TContext
      > => {

      const mutationOptions = getConversationControllerSendMessageMutationOptions(options);

      return useMutation(mutationOptions, queryClient);
    }
    export const conversationControllerGetMessages = (
    id: string,
 options?: SecondParameter<typeof customInstance>,signal?: AbortSignal
) => {
      
      
      return customInstance<MessageDto[]>(
      {url: `/conversation/${id}/messages`, method: 'GET', signal
    },
      options);
    }
  



export const getConversationControllerGetMessagesQueryKey = (id?: string,) => {
    return [
    `/conversation/${id}/messages`
    ] as const;
    }

    
export const getConversationControllerGetMessagesQueryOptions = <TData = Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError = ErrorType<ErrorDto>>(id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
) => {

const {query: queryOptions, request: requestOptions} = options ?? {};

  const queryKey =  queryOptions?.queryKey ?? getConversationControllerGetMessagesQueryKey(id);

  

    const queryFn: QueryFunction<Awaited<ReturnType<typeof conversationControllerGetMessages>>> = ({ signal }) => conversationControllerGetMessages(id, requestOptions, signal);

      

      

   return  { queryKey, queryFn, enabled: !!(id), ...queryOptions} as UseQueryOptions<Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError, TData> & { queryKey: DataTag<QueryKey, TData, TError> }
}

export type ConversationControllerGetMessagesQueryResult = NonNullable<Awaited<ReturnType<typeof conversationControllerGetMessages>>>
export type ConversationControllerGetMessagesQueryError = ErrorType<ErrorDto>


export function useConversationControllerGetMessages<TData = Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError = ErrorType<ErrorDto>>(
 id: string, options: { query:Partial<UseQueryOptions<Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError, TData>> & Pick<
        DefinedInitialDataOptions<
          Awaited<ReturnType<typeof conversationControllerGetMessages>>,
          TError,
          Awaited<ReturnType<typeof conversationControllerGetMessages>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  DefinedUseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useConversationControllerGetMessages<TData = Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError = ErrorType<ErrorDto>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError, TData>> & Pick<
        UndefinedInitialDataOptions<
          Awaited<ReturnType<typeof conversationControllerGetMessages>>,
          TError,
          Awaited<ReturnType<typeof conversationControllerGetMessages>>
        > , 'initialData'
      >, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }
export function useConversationControllerGetMessages<TData = Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError = ErrorType<ErrorDto>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient
  ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> }

export function useConversationControllerGetMessages<TData = Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError = ErrorType<ErrorDto>>(
 id: string, options?: { query?:Partial<UseQueryOptions<Awaited<ReturnType<typeof conversationControllerGetMessages>>, TError, TData>>, request?: SecondParameter<typeof customInstance>}
 , queryClient?: QueryClient 
 ):  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> } {

  const queryOptions = getConversationControllerGetMessagesQueryOptions(id,options)

  const query = useQuery(queryOptions, queryClient) as  UseQueryResult<TData, TError> & { queryKey: DataTag<QueryKey, TData, TError> };

  query.queryKey = queryOptions.queryKey ;

  return query;
}



