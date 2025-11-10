# seek_backend.model.Order

## Load the model package
```dart
import 'package:seek_backend/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maker** | **String** |  | 
**make** | [**Asset**](Asset.md) |  | 
**take** | [**Asset**](Asset.md) |  | 
**fill** | **String** |  | 
**makeStock** | **String** |  | 
**cancelled** | **bool** |  | 
**salt** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**lastUpdateAt** | [**DateTime**](DateTime.md) |  | 
**hash** | **String** |  | 
**type** | **String** |  | 
**data** | [**OrderOpenSeaV1DataV1**](OrderOpenSeaV1DataV1.md) |  | 
**taker** | **String** |  | [optional] 
**start** | **int** |  | [optional] 
**end** | **int** |  | [optional] 
**signature** | **String** |  | [optional] 
**pending** | [**BuiltList&lt;OrderExchangeHistory&gt;**](OrderExchangeHistory.md) |  | [optional] 
**makeBalance** | **String** |  | [optional] 
**makePriceUsd** | **String** |  | [optional] 
**takePriceUsd** | **String** |  | [optional] 
**priceHistory** | [**BuiltList&lt;OrderPriceHistoryRecord&gt;**](OrderPriceHistoryRecord.md) |  | [optional] [default to ListBuilder()]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


