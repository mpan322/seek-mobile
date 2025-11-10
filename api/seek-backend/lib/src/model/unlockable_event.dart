//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unlockable_event.g.dart';

/// UnlockableEvent
///
/// Properties:
/// * [eventId]
/// * [itemId]
/// * [type]
@BuiltValue()
abstract class UnlockableEvent
    implements Built<UnlockableEvent, UnlockableEventBuilder> {
  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  @BuiltValueField(wireName: r'itemId')
  String get itemId;

  @BuiltValueField(wireName: r'type')
  UnlockableEventTypeEnum get type;
  // enum typeEnum {  LOCK_CREATED,  LOCK_UNLOCKED,  };

  UnlockableEvent._();

  factory UnlockableEvent([void updates(UnlockableEventBuilder b)]) =
      _$UnlockableEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnlockableEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnlockableEvent> get serializer =>
      _$UnlockableEventSerializer();
}

class _$UnlockableEventSerializer
    implements PrimitiveSerializer<UnlockableEvent> {
  @override
  final Iterable<Type> types = const [UnlockableEvent, _$UnlockableEvent];

  @override
  final String wireName = r'UnlockableEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnlockableEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'eventId';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
    yield r'itemId';
    yield serializers.serialize(
      object.itemId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(UnlockableEventTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UnlockableEvent object, {
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
    required UnlockableEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventId = valueDes;
          break;
        case r'itemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnlockableEventTypeEnum),
          ) as UnlockableEventTypeEnum;
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
  UnlockableEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnlockableEventBuilder();
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

class UnlockableEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LOCK_CREATED')
  static const UnlockableEventTypeEnum CREATED =
      _$unlockableEventTypeEnum_CREATED;
  @BuiltValueEnumConst(wireName: r'LOCK_UNLOCKED')
  static const UnlockableEventTypeEnum UNLOCKED =
      _$unlockableEventTypeEnum_UNLOCKED;

  static Serializer<UnlockableEventTypeEnum> get serializer =>
      _$unlockableEventTypeEnumSerializer;

  const UnlockableEventTypeEnum._(String name) : super(name);

  static BuiltSet<UnlockableEventTypeEnum> get values =>
      _$unlockableEventTypeEnumValues;
  static UnlockableEventTypeEnum valueOf(String name) =>
      _$unlockableEventTypeEnumValueOf(name);
}
