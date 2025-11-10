# seek_backend.model.NftOrderOwnership

## Load the model package
```dart
import 'package:seek_backend/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Ownership identifier, has format \"token:tokenId:owner\" | 
**contract** | **String** |  | 
**tokenId** | **String** |  | 
**owner** | **String** |  | 
**value** | **String** |  | 
**lazyValue** | **String** |  | 
**date** | [**DateTime**](DateTime.md) |  | 
**pending** | [**BuiltList&lt;ItemHistory&gt;**](ItemHistory.md) | History of ownership | 
**creators** | [**BuiltList&lt;ModelPart&gt;**](ModelPart.md) |  | [optional] 
**bestSellOrder** | [**Order**](Order.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


