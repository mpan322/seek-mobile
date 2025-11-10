//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'item_transfer.g.dart';

/// ItemTransfer
///
/// Properties:
/// * [type]
/// * [from]
@BuiltValue()
abstract class ItemTransfer
    implements Built<ItemTransfer, ItemTransferBuilder> {
  @BuiltValueField(wireName: r'type')
  ItemTransferTypeEnum get type;
  // enum typeEnum {  TRANSFER,  };

  @BuiltValueField(wireName: r'from')
  String get from;

  ItemTransfer._();

  factory ItemTransfer([void updates(ItemTransferBuilder b)]) = _$ItemTransfer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemTransferBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemTransfer> get serializer => _$ItemTransferSerializer();
}

class _$ItemTransferSerializer implements PrimitiveSerializer<ItemTransfer> {
  @override
  final Iterable<Type> types = const [ItemTransfer, _$ItemTransfer];

  @override
  final String wireName = r'ItemTransfer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemTransfer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ItemTransferTypeEnum),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemTransfer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ItemTransferBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemTransferTypeEnum),
          ) as ItemTransferTypeEnum;
          result.type = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemTransfer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemTransferBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ItemTransferTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TRANSFER')
  static const ItemTransferTypeEnum TRANSFER = _$itemTransferTypeEnum_TRANSFER;

  static Serializer<ItemTransferTypeEnum> get serializer =>
      _$itemTransferTypeEnumSerializer;

  const ItemTransferTypeEnum._(String name) : super(name);

  static BuiltSet<ItemTransferTypeEnum> get values =>
      _$itemTransferTypeEnumValues;
  static ItemTransferTypeEnum valueOf(String name) =>
      _$itemTransferTypeEnumValueOf(name);
}
