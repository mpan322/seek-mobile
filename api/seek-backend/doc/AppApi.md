# seek_backend.api.AppApi

## Load the API package
```dart
import 'package:seek_backend/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appControllerGetHello**](AppApi.md#appcontrollergethello) | **GET** / | 


# **appControllerGetHello**
> appControllerGetHello()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAppApi();

try {
    api.appControllerGetHello();
} catch on DioException (e) {
    print('Exception when calling AppApi->appControllerGetHello: $e\n');
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

