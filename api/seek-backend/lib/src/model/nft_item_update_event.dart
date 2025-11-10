//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_update_event.g.dart';

/// NftItemUpdateEvent
///
/// Properties:
/// * [item]
/// * [type]
@BuiltValue()
abstract class NftItemUpdateEvent
    implements Built<NftItemUpdateEvent, NftItemUpdateEventBuilder> {
  @BuiltValueField(wireName: r'item')
  NftItem get item;

  @BuiltValueField(wireName: r'type')
  NftItemUpdateEventTypeEnum? get type;
  // enum typeEnum {  UPDATE,  };

  NftItemUpdateEvent._();

  factory NftItemUpdateEvent([void updates(NftItemUpdateEventBuilder b)]) =
      _$NftItemUpdateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemUpdateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemUpdateEvent> get serializer =>
      _$NftItemUpdateEventSerializer();
}

class _$NftItemUpdateEventSerializer
    implements PrimitiveSerializer<NftItemUpdateEvent> {
  @override
  final Iterable<Type> types = const [NftItemUpdateEvent, _$NftItemUpdateEvent];

  @override
  final String wireName = r'NftItemUpdateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemUpdateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'item';
    yield serializers.serialize(
      object.item,
      specifiedType: const FullType(NftItem),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftItemUpdateEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftItemUpdateEvent object, {
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
    required NftItemUpdateEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItem),
          ) as NftItem;
          result.item.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemUpdateEventTypeEnum),
          ) as NftItemUpdateEventTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftItemUpdateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemUpdateEventBuilder();
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

class NftItemUpdateEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftItemUpdateEventTypeEnum UPDATE =
      _$nftItemUpdateEventTypeEnum_UPDATE;

  static Serializer<NftItemUpdateEventTypeEnum> get serializer =>
      _$nftItemUpdateEventTypeEnumSerializer;

  const NftItemUpdateEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemUpdateEventTypeEnum> get values =>
      _$nftItemUpdateEventTypeEnumValues;
  static NftItemUpdateEventTypeEnum valueOf(String name) =>
      _$nftItemUpdateEventTypeEnumValueOf(name);
}
