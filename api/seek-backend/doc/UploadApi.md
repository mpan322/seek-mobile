# seek_backend.api.UploadApi

## Load the API package
```dart
import 'package:seek_backend/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadControllerDownload**](UploadApi.md#uploadcontrollerdownload) | **GET** /upload/access | 
[**uploadControllerGetPresignedUrl**](UploadApi.md#uploadcontrollergetpresignedurl) | **GET** /upload/presign | 


# **uploadControllerDownload**
> uploadControllerDownload(key)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getUploadApi();
final String key = key_example; // String | 

try {
    api.uploadControllerDownload(key);
} catch on DioException (e) {
    print('Exception when calling UploadApi->uploadControllerDownload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadControllerGetPresignedUrl**
> uploadControllerGetPresignedUrl(filename, fileType, folder)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getUploadApi();
final String filename = filename_example; // String | 
final String fileType = fileType_example; // String | 
final String folder = folder_example; // String | 

try {
    api.uploadControllerGetPresignedUrl(filename, fileType, folder);
} catch on DioException (e) {
    print('Exception when calling UploadApi->uploadControllerGetPresignedUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**|  | 
 **fileType** | **String**|  | 
 **folder** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

