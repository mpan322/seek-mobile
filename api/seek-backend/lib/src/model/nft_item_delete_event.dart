//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_deleted_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_delete_event.g.dart';

/// NftItemDeleteEvent
///
/// Properties:
/// * [item]
/// * [type]
@BuiltValue()
abstract class NftItemDeleteEvent
    implements Built<NftItemDeleteEvent, NftItemDeleteEventBuilder> {
  @BuiltValueField(wireName: r'item')
  NftDeletedItem get item;

  @BuiltValueField(wireName: r'type')
  NftItemDeleteEventTypeEnum? get type;
  // enum typeEnum {  DELETE,  };

  NftItemDeleteEvent._();

  factory NftItemDeleteEvent([void updates(NftItemDeleteEventBuilder b)]) =
      _$NftItemDeleteEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemDeleteEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemDeleteEvent> get serializer =>
      _$NftItemDeleteEventSerializer();
}

class _$NftItemDeleteEventSerializer
    implements PrimitiveSerializer<NftItemDeleteEvent> {
  @override
  final Iterable<Type> types = const [NftItemDeleteEvent, _$NftItemDeleteEvent];

  @override
  final String wireName = r'NftItemDeleteEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemDeleteEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'item';
    yield serializers.serialize(
      object.item,
      specifiedType: const FullType(NftDeletedItem),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftItemDeleteEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftItemDeleteEvent object, {
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
    required NftItemDeleteEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftDeletedItem),
          ) as NftDeletedItem;
          result.item.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemDeleteEventTypeEnum),
          ) as NftItemDeleteEventTypeEnum;
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
  NftItemDeleteEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemDeleteEventBuilder();
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

class NftItemDeleteEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftItemDeleteEventTypeEnum DELETE =
      _$nftItemDeleteEventTypeEnum_DELETE;

  static Serializer<NftItemDeleteEventTypeEnum> get serializer =>
      _$nftItemDeleteEventTypeEnumSerializer;

  const NftItemDeleteEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemDeleteEventTypeEnum> get values =>
      _$nftItemDeleteEventTypeEnumValues;
  static NftItemDeleteEventTypeEnum valueOf(String name) =>
      _$nftItemDeleteEventTypeEnumValueOf(name);
}
