//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:seek_backend/src/api_util.dart';
import 'package:seek_backend/src/model/activity_sort.dart';
import 'package:seek_backend/src/model/order_activities.dart';
import 'package:seek_backend/src/model/order_activity_filter.dart';
import 'package:seek_backend/src/model/order_indexer_api_error.dart';

class OrderActivityControllerApi {
  final Dio _dio;

  final Serializers _serializers;

  const OrderActivityControllerApi(this._dio, this._serializers);

  /// getOrderActivities
  ///
  ///
  /// Parameters:
  /// * [orderActivityFilter]
  /// * [continuation] - continuation value from previous response
  /// * [size] - how many items to return
  /// * [sort]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OrderActivities] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OrderActivities>> getOrderActivities({
    required OrderActivityFilter orderActivityFilter,
    String? continuation,
    int? size,
    ActivitySort? sort,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v0.1/order/activities/search';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (continuation != null)
        r'continuation': encodeQueryParameter(
            _serializers, continuation, const FullType(String)),
      if (size != null)
        r'size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (sort != null)
        r'sort': encodeQueryParameter(
            _serializers, sort, const FullType(ActivitySort)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(OrderActivityFilter);
      _bodyData =
          _serializers.serialize(orderActivityFilter, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OrderActivities? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OrderActivities),
            ) as OrderActivities;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OrderActivities>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
