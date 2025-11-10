# seek_backend.model.OrderBid

## Load the model package
```dart
import 'package:seek_backend/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderHash** | **String** |  | 
**status** | [**OrderBidStatus**](OrderBidStatus.md) |  | 
**maker** | **String** |  | 
**make** | [**Asset**](Asset.md) |  | 
**take** | [**Asset**](Asset.md) |  | 
**fill** | **String** |  | 
**makeStock** | **String** |  | 
**cancelled** | **bool** |  | 
**salt** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**type** | **String** |  | 
**data** | [**OrderOpenSeaV1DataV1**](OrderOpenSeaV1DataV1.md) |  | 
**taker** | **String** |  | [optional] 
**makeBalance** | **String** |  | [optional] 
**makePriceUsd** | **String** |  | [optional] 
**takePriceUsd** | **String** |  | [optional] 
**signature** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


