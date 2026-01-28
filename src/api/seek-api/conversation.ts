/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import {
  useMutation
} from '@tanstack/react-query';
import type {
  MutationFunction,
  QueryClient,
  UseMutationOptions,
  UseMutationResult
} from '@tanstack/react-query';

import type {
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
    