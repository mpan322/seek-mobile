//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'item_buy.g.dart';

/// ItemBuy
///
/// Properties:
/// * [fill]
/// * [type]
/// * [buyer]
@BuiltValue()
abstract class ItemBuy implements Built<ItemBuy, ItemBuyBuilder> {
  @BuiltValueField(wireName: r'fill')
  String get fill;

  @BuiltValueField(wireName: r'type')
  ItemBuyTypeEnum? get type;
  // enum typeEnum {  BUY,  };

  @BuiltValueField(wireName: r'buyer')
  String? get buyer;

  ItemBuy._();

  factory ItemBuy([void updates(ItemBuyBuilder b)]) = _$ItemBuy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemBuyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemBuy> get serializer => _$ItemBuySerializer();
}

class _$ItemBuySerializer implements PrimitiveSerializer<ItemBuy> {
  @override
  final Iterable<Type> types = const [ItemBuy, _$ItemBuy];

  @override
  final String wireName = r'ItemBuy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemBuy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fill';
    yield serializers.serialize(
      object.fill,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ItemBuyTypeEnum),
      );
    }
    if (object.buyer != null) {
      yield r'buyer';
      yield serializers.serialize(
        object.buyer,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemBuy object, {
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
    required ItemBuyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fill = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemBuyTypeEnum),
          ) as ItemBuyTypeEnum;
          result.type = valueDes;
          break;
        case r'buyer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.buyer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemBuy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemBuyBuilder();
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

class ItemBuyTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BUY')
  static const ItemBuyTypeEnum BUY = _$itemBuyTypeEnum_BUY;

  static Serializer<ItemBuyTypeEnum> get serializer =>
      _$itemBuyTypeEnumSerializer;

  const ItemBuyTypeEnum._(String name) : super(name);

  static BuiltSet<ItemBuyTypeEnum> get values => _$itemBuyTypeEnumValues;
  static ItemBuyTypeEnum valueOf(String name) => _$itemBuyTypeEnumValueOf(name);
}
