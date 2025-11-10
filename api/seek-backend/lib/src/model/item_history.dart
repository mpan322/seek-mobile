//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:seek_backend/src/model/item_transfer.dart';
import 'package:seek_backend/src/model/item_royalty.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'item_history.g.dart';

/// History of item
///
/// Properties:
/// * [contract]
/// * [tokenId]
/// * [date]
/// * [type]
/// * [royalties]
/// * [from]
/// * [owner]
/// * [value]
@BuiltValue()
abstract class ItemHistory implements Built<ItemHistory, ItemHistoryBuilder> {
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'owner')
  String? get owner;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'value')
  String? get value;

  /// One Of [ItemRoyalty], [ItemTransfer]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'ROYALTY': ItemRoyalty,
    r'TRANSFER': ItemTransfer,
  };

  ItemHistory._();

  factory ItemHistory([void updates(ItemHistoryBuilder b)]) = _$ItemHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemHistory> get serializer => _$ItemHistorySerializer();
}

extension ItemHistoryDiscriminatorExt on ItemHistory {
  String? get discriminatorValue {
    if (this is ItemRoyalty) {
      return r'ROYALTY';
    }
    if (this is ItemTransfer) {
      return r'TRANSFER';
    }
    return null;
  }
}

extension ItemHistoryBuilderDiscriminatorExt on ItemHistoryBuilder {
  String? get discriminatorValue {
    if (this is ItemRoyaltyBuilder) {
      return r'ROYALTY';
    }
    if (this is ItemTransferBuilder) {
      return r'TRANSFER';
    }
    return null;
  }
}

class _$ItemHistorySerializer implements PrimitiveSerializer<ItemHistory> {
  @override
  final Iterable<Type> types = const [ItemHistory, _$ItemHistory];

  @override
  final String wireName = r'ItemHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    yield r'tokenId';
    yield serializers.serialize(
      object.tokenId,
      specifiedType: const FullType(String),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    yield r'contract';
    yield serializers.serialize(
      object.contract,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ItemHistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.owner = valueDes;
          break;
        case r'tokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenId = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemHistoryBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(ItemHistory.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      ItemRoyalty,
      ItemTransfer,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'ROYALTY':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ItemRoyalty),
        ) as ItemRoyalty;
        oneOfType = ItemRoyalty;
        break;
      case r'TRANSFER':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ItemTransfer),
        ) as ItemTransfer;
        oneOfType = ItemTransfer;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class ItemHistoryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ROYALTY')
  static const ItemHistoryTypeEnum ROYALTY = _$itemHistoryTypeEnum_ROYALTY;
  @BuiltValueEnumConst(wireName: r'TRANSFER')
  static const ItemHistoryTypeEnum TRANSFER = _$itemHistoryTypeEnum_TRANSFER;

  static Serializer<ItemHistoryTypeEnum> get serializer =>
      _$itemHistoryTypeEnumSerializer;

  const ItemHistoryTypeEnum._(String name) : super(name);

  static BuiltSet<ItemHistoryTypeEnum> get values =>
      _$itemHistoryTypeEnumValues;
  static ItemHistoryTypeEnum valueOf(String name) =>
      _$itemHistoryTypeEnumValueOf(name);
}
