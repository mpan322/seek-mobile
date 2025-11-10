# seek_backend.api.ListingsApi

## Load the API package
```dart
import 'package:seek_backend/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listingsControllerCreateDraft**](ListingsApi.md#listingscontrollercreatedraft) | **POST** /listings/draft | 
[**listingsControllerCreateStep1**](ListingsApi.md#listingscontrollercreatestep1) | **PATCH** /listings/{id}/createStep1 | 
[**listingsControllerCreateStep2**](ListingsApi.md#listingscontrollercreatestep2) | **PATCH** /listings/{id}/createStep2 | 
[**listingsControllerCreateStep3**](ListingsApi.md#listingscontrollercreatestep3) | **PATCH** /listings/{id}/createStep3 | 
[**listingsControllerDeleteListing**](ListingsApi.md#listingscontrollerdeletelisting) | **DELETE** /listings/{id} | 
[**listingsControllerGetAllUnverifiedListings**](ListingsApi.md#listingscontrollergetallunverifiedlistings) | **GET** /listings/allUnverified | 
[**listingsControllerGetById**](ListingsApi.md#listingscontrollergetbyid) | **GET** /listings/{id} | 
[**listingsControllerGetListing**](ListingsApi.md#listingscontrollergetlisting) | **GET** /listings/mine/{id} | 
[**listingsControllerMyListings**](ListingsApi.md#listingscontrollermylistings) | **GET** /listings/mine | 
[**listingsControllerPublish**](ListingsApi.md#listingscontrollerpublish) | **POST** /listings/{id}/publish | 
[**listingsControllerVerifyListing**](ListingsApi.md#listingscontrollerverifylisting) | **PATCH** /listings/verify/{id} | 


# **listingsControllerCreateDraft**
> listingsControllerCreateDraft()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();

try {
    api.listingsControllerCreateDraft();
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerCreateDraft: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerCreateStep1**
> listingsControllerCreateStep1(id, body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 
final JsonObject body = Object; // JsonObject | 

try {
    api.listingsControllerCreateStep1(id, body);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerCreateStep1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerCreateStep2**
> listingsControllerCreateStep2(id, body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 
final JsonObject body = Object; // JsonObject | 

try {
    api.listingsControllerCreateStep2(id, body);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerCreateStep2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerCreateStep3**
> listingsControllerCreateStep3(id, body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 
final JsonObject body = Object; // JsonObject | 

try {
    api.listingsControllerCreateStep3(id, body);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerCreateStep3: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerDeleteListing**
> listingsControllerDeleteListing(id)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 

try {
    api.listingsControllerDeleteListing(id);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerDeleteListing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerGetAllUnverifiedListings**
> listingsControllerGetAllUnverifiedListings()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();

try {
    api.listingsControllerGetAllUnverifiedListings();
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerGetAllUnverifiedListings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerGetById**
> listingsControllerGetById(id)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 

try {
    api.listingsControllerGetById(id);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerGetById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerGetListing**
> listingsControllerGetListing(id)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 

try {
    api.listingsControllerGetListing(id);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerGetListing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerMyListings**
> listingsControllerMyListings()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();

try {
    api.listingsControllerMyListings();
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerMyListings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerPublish**
> listingsControllerPublish(id, body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 
final JsonObject body = Object; // JsonObject | 

try {
    api.listingsControllerPublish(id, body);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerPublish: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listingsControllerVerifyListing**
> listingsControllerVerifyListing(id)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getListingsApi();
final String id = id_example; // String | 

try {
    api.listingsControllerVerifyListing(id);
} catch on DioException (e) {
    print('Exception when calling ListingsApi->listingsControllerVerifyListing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

