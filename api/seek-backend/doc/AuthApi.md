# seek_backend.api.AuthApi

## Load the API package
```dart
import 'package:seek_backend/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerConfirmPasswordReset**](AuthApi.md#authcontrollerconfirmpasswordreset) | **POST** /auth/confirmPasswordReset | 
[**authControllerCurrentUser**](AuthApi.md#authcontrollercurrentuser) | **GET** /auth/currentUser | 
[**authControllerForgotPassword**](AuthApi.md#authcontrollerforgotpassword) | **POST** /auth/forgot-password | 
[**authControllerGoogleAuth**](AuthApi.md#authcontrollergoogleauth) | **GET** /auth/google | 
[**authControllerGoogleAuthCallback**](AuthApi.md#authcontrollergoogleauthcallback) | **GET** /auth/google/callback | 
[**authControllerLogin**](AuthApi.md#authcontrollerlogin) | **POST** /auth/login | 
[**authControllerLogout**](AuthApi.md#authcontrollerlogout) | **POST** /auth/logout | 
[**authControllerRefreshToken**](AuthApi.md#authcontrollerrefreshtoken) | **POST** /auth/refresh | 
[**authControllerSignup**](AuthApi.md#authcontrollersignup) | **POST** /auth/signup | 
[**authControllerVerifyEmail**](AuthApi.md#authcontrollerverifyemail) | **POST** /auth/verify-email | 


# **authControllerConfirmPasswordReset**
> authControllerConfirmPasswordReset(confirmPasswordResetDto)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();
final ConfirmPasswordResetDto confirmPasswordResetDto = ; // ConfirmPasswordResetDto | 

try {
    api.authControllerConfirmPasswordReset(confirmPasswordResetDto);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerConfirmPasswordReset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmPasswordResetDto** | [**ConfirmPasswordResetDto**](ConfirmPasswordResetDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[mobile-token](../README.md#mobile-token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerCurrentUser**
> authControllerCurrentUser()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();

try {
    api.authControllerCurrentUser();
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerCurrentUser: $e\n');
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

# **authControllerForgotPassword**
> authControllerForgotPassword(body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();
final JsonObject body = Object; // JsonObject | 

try {
    api.authControllerForgotPassword(body);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerForgotPassword: $e\n');
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

# **authControllerGoogleAuth**
> authControllerGoogleAuth()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();

try {
    api.authControllerGoogleAuth();
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerGoogleAuth: $e\n');
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

# **authControllerGoogleAuthCallback**
> authControllerGoogleAuthCallback()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();

try {
    api.authControllerGoogleAuthCallback();
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerGoogleAuthCallback: $e\n');
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

# **authControllerLogin**
> authControllerLogin()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();

try {
    api.authControllerLogin();
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerLogin: $e\n');
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

# **authControllerLogout**
> authControllerLogout()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();

try {
    api.authControllerLogout();
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerLogout: $e\n');
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

# **authControllerRefreshToken**
> authControllerRefreshToken()



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();

try {
    api.authControllerRefreshToken();
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerRefreshToken: $e\n');
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

# **authControllerSignup**
> authControllerSignup(body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();
final JsonObject body = Object; // JsonObject | 

try {
    api.authControllerSignup(body);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerSignup: $e\n');
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

# **authControllerVerifyEmail**
> authControllerVerifyEmail(body)



### Example
```dart
import 'package:seek_backend/api.dart';

final api = SeekBackend().getAuthApi();
final JsonObject body = Object; // JsonObject | 

try {
    api.authControllerVerifyEmail(body);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerVerifyEmail: $e\n');
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

