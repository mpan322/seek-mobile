# seek_backend.api.UsersApi

## Load the API package
```dart
import 'package:seek_backend/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersControllerCreate**](UsersApi.md#userscontrollercreate) | **POST** /users | 
[**usersControllerGetAllUsers**](UsersApi.md#userscontrollergetallusers) | **GET** /users | 
[**usersControllerGetUser**](UsersApi.md#userscontrollergetuser) | **GET** /users/{id} | 
[**usersControllerSetProfilePic**](UsersApi.md#userscontrollersetprofilepic) | **PUT** /users/setProfilePic | 
[**usersControllerSetUsername**](UsersApi.md#userscontrollersetusername) | **PUT** /users/setUsername | 


# **usersControllerCreate**
> usersControllerCreate(body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getUsersApi();
final JsonObject body = Object; // JsonObject | 

try {
    api.usersControllerCreate(body);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerCreate: $e\n');
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

# **usersControllerGetAllUsers**
> usersControllerGetAllUsers()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getUsersApi();

try {
    api.usersControllerGetAllUsers();
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerGetAllUsers: $e\n');
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

# **usersControllerGetUser**
> usersControllerGetUser(id)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getUsersApi();
final String id = id_example; // String | 

try {
    api.usersControllerGetUser(id);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerGetUser: $e\n');
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

# **usersControllerSetProfilePic**
> usersControllerSetProfilePic(body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getUsersApi();
final JsonObject body = Object; // JsonObject | 

try {
    api.usersControllerSetProfilePic(body);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerSetProfilePic: $e\n');
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

# **usersControllerSetUsername**
> usersControllerSetUsername(body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getUsersApi();
final JsonObject body = Object; // JsonObject | 

try {
    api.usersControllerSetUsername(body);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerSetUsername: $e\n');
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

