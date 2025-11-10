# seek_backend.api.ContactApi

## Load the API package
```dart
import 'package:seek_backend/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contactControllerContact**](ContactApi.md#contactcontrollercontact) | **POST** /contact | 


# **contactControllerContact**
> contactControllerContact(body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getContactApi();
final JsonObject body = Object; // JsonObject | 

try {
    api.contactControllerContact(body);
} catch on DioException (e) {
    print('Exception when calling ContactApi->contactControllerContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

