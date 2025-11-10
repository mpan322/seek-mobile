//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unlockable_api_error.g.dart';

/// UnlockableApiError
///
/// Properties:
/// * [status]
/// * [code]
/// * [message]
@BuiltValue()
abstract class UnlockableApiError
    implements Built<UnlockableApiError, UnlockableApiErrorBuilder> {
  @BuiltValueField(wireName: r'status')
  int get status;

  @BuiltValueField(wireName: r'code')
  UnlockableApiErrorCodeEnum get code;
  // enum codeEnum {  UNKNOWN,  LOCK_EXISTS,  OWNERHIP_ERROR,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  UnlockableApiError._();

  factory UnlockableApiError([void updates(UnlockableApiErrorBuilder b)]) =
      _$UnlockableApiError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnlockableApiErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnlockableApiError> get serializer =>
      _$UnlockableApiErrorSerializer();
}

class _$UnlockableApiErrorSerializer
    implements PrimitiveSerializer<UnlockableApiError> {
  @override
  final Iterable<Type> types = const [UnlockableApiError, _$UnlockableApiError];

  @override
  final String wireName = r'UnlockableApiError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnlockableApiError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(int),
    );
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(UnlockableApiErrorCodeEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UnlockableApiError object, {
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
    required UnlockableApiErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnlockableApiErrorCodeEnum),
          ) as UnlockableApiErrorCodeEnum;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnlockableApiError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnlockableApiErrorBuilder();
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

class UnlockableApiErrorCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const UnlockableApiErrorCodeEnum UNKNOWN =
      _$unlockableApiErrorCodeEnum_UNKNOWN;
  @BuiltValueEnumConst(wireName: r'LOCK_EXISTS')
  static const UnlockableApiErrorCodeEnum LOCK_EXISTS =
      _$unlockableApiErrorCodeEnum_LOCK_EXISTS;
  @BuiltValueEnumConst(wireName: r'OWNERHIP_ERROR')
  static const UnlockableApiErrorCodeEnum OWNERHIP_ERROR =
      _$unlockableApiErrorCodeEnum_OWNERHIP_ERROR;

  static Serializer<UnlockableApiErrorCodeEnum> get serializer =>
      _$unlockableApiErrorCodeEnumSerializer;

  const UnlockableApiErrorCodeEnum._(String name) : super(name);

  static BuiltSet<UnlockableApiErrorCodeEnum> get values =>
      _$unlockableApiErrorCodeEnumValues;
  static UnlockableApiErrorCodeEnum valueOf(String name) =>
      _$unlockableApiErrorCodeEnumValueOf(name);
}
