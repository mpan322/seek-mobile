//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'log_event.g.dart';

/// LogEvent
///
/// Properties:
/// * [transactionHash]
/// * [status]
/// * [address]
/// * [topic]
@BuiltValue()
abstract class LogEvent implements Built<LogEvent, LogEventBuilder> {
  @BuiltValueField(wireName: r'transactionHash')
  String get transactionHash;

  @BuiltValueField(wireName: r'status')
  LogEventStatusEnum get status;
  // enum statusEnum {  PENDING,  CONFIRMED,  REVERTED,  DROPPED,  INACTIVE,  };

  @BuiltValueField(wireName: r'address')
  String get address;

  @BuiltValueField(wireName: r'topic')
  String get topic;

  LogEvent._();

  factory LogEvent([void updates(LogEventBuilder b)]) = _$LogEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogEvent> get serializer => _$LogEventSerializer();
}

class _$LogEventSerializer implements PrimitiveSerializer<LogEvent> {
  @override
  final Iterable<Type> types = const [LogEvent, _$LogEvent];

  @override
  final String wireName = r'LogEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transactionHash';
    yield serializers.serialize(
      object.transactionHash,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(LogEventStatusEnum),
    );
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'topic';
    yield serializers.serialize(
      object.topic,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LogEvent object, {
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
    required LogEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transactionHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionHash = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LogEventStatusEnum),
          ) as LogEventStatusEnum;
          result.status = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'topic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.topic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LogEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogEventBuilder();
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

class LogEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const LogEventStatusEnum PENDING = _$logEventStatusEnum_PENDING;
  @BuiltValueEnumConst(wireName: r'CONFIRMED')
  static const LogEventStatusEnum CONFIRMED = _$logEventStatusEnum_CONFIRMED;
  @BuiltValueEnumConst(wireName: r'REVERTED')
  static const LogEventStatusEnum REVERTED = _$logEventStatusEnum_REVERTED;
  @BuiltValueEnumConst(wireName: r'DROPPED')
  static const LogEventStatusEnum DROPPED = _$logEventStatusEnum_DROPPED;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const LogEventStatusEnum INACTIVE = _$logEventStatusEnum_INACTIVE;

  static Serializer<LogEventStatusEnum> get serializer =>
      _$logEventStatusEnumSerializer;

  const LogEventStatusEnum._(String name) : super(name);

  static BuiltSet<LogEventStatusEnum> get values => _$logEventStatusEnumValues;
  static LogEventStatusEnum valueOf(String name) =>
      _$logEventStatusEnumValueOf(name);
}
