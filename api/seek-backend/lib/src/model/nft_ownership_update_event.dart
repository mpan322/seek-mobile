//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_ownership.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership_update_event.g.dart';

/// NftOwnershipUpdateEvent
///
/// Properties:
/// * [ownership]
/// * [type]
@BuiltValue()
abstract class NftOwnershipUpdateEvent
    implements Built<NftOwnershipUpdateEvent, NftOwnershipUpdateEventBuilder> {
  @BuiltValueField(wireName: r'ownership')
  NftOwnership get ownership;

  @BuiltValueField(wireName: r'type')
  NftOwnershipUpdateEventTypeEnum? get type;
  // enum typeEnum {  UPDATE,  };

  NftOwnershipUpdateEvent._();

  factory NftOwnershipUpdateEvent(
          [void updates(NftOwnershipUpdateEventBuilder b)]) =
      _$NftOwnershipUpdateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipUpdateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipUpdateEvent> get serializer =>
      _$NftOwnershipUpdateEventSerializer();
}

class _$NftOwnershipUpdateEventSerializer
    implements PrimitiveSerializer<NftOwnershipUpdateEvent> {
  @override
  final Iterable<Type> types = const [
    NftOwnershipUpdateEvent,
    _$NftOwnershipUpdateEvent
  ];

  @override
  final String wireName = r'NftOwnershipUpdateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipUpdateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ownership';
    yield serializers.serialize(
      object.ownership,
      specifiedType: const FullType(NftOwnership),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftOwnershipUpdateEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOwnershipUpdateEvent object, {
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
    required NftOwnershipUpdateEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownership':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOwnership),
          ) as NftOwnership;
          result.ownership.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOwnershipUpdateEventTypeEnum),
          ) as NftOwnershipUpdateEventTypeEnum;
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
  NftOwnershipUpdateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipUpdateEventBuilder();
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

class NftOwnershipUpdateEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftOwnershipUpdateEventTypeEnum UPDATE =
      _$nftOwnershipUpdateEventTypeEnum_UPDATE;

  static Serializer<NftOwnershipUpdateEventTypeEnum> get serializer =>
      _$nftOwnershipUpdateEventTypeEnumSerializer;

  const NftOwnershipUpdateEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipUpdateEventTypeEnum> get values =>
      _$nftOwnershipUpdateEventTypeEnumValues;
  static NftOwnershipUpdateEventTypeEnum valueOf(String name) =>
      _$nftOwnershipUpdateEventTypeEnumValueOf(name);
}
