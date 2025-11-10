//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gateway_api_error.g.dart';

/// GatewayApiError
///
/// Properties:
/// * [status]
/// * [code]
/// * [message]
@BuiltValue()
abstract class GatewayApiError
    implements Built<GatewayApiError, GatewayApiErrorBuilder> {
  @BuiltValueField(wireName: r'status')
  int get status;

  @BuiltValueField(wireName: r'code')
  GatewayApiErrorCodeEnum get code;
  // enum codeEnum {  UNKNOWN,  VALIDATION,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  GatewayApiError._();

  factory GatewayApiError([void updates(GatewayApiErrorBuilder b)]) =
      _$GatewayApiError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GatewayApiErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GatewayApiError> get serializer =>
      _$GatewayApiErrorSerializer();
}

class _$GatewayApiErrorSerializer
    implements PrimitiveSerializer<GatewayApiError> {
  @override
  final Iterable<Type> types = const [GatewayApiError, _$GatewayApiError];

  @override
  final String wireName = r'GatewayApiError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GatewayApiError object, {
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
      specifiedType: const FullType(GatewayApiErrorCodeEnum),
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
    GatewayApiError object, {
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
    required GatewayApiErrorBuilder result,
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
            specifiedType: const FullType(GatewayApiErrorCodeEnum),
          ) as GatewayApiErrorCodeEnum;
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
  GatewayApiError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GatewayApiErrorBuilder();
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

class GatewayApiErrorCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const GatewayApiErrorCodeEnum UNKNOWN =
      _$gatewayApiErrorCodeEnum_UNKNOWN;
  @BuiltValueEnumConst(wireName: r'VALIDATION')
  static const GatewayApiErrorCodeEnum VALIDATION =
      _$gatewayApiErrorCodeEnum_VALIDATION;

  static Serializer<GatewayApiErrorCodeEnum> get serializer =>
      _$gatewayApiErrorCodeEnumSerializer;

  const GatewayApiErrorCodeEnum._(String name) : super(name);

  static BuiltSet<GatewayApiErrorCodeEnum> get values =>
      _$gatewayApiErrorCodeEnumValues;
  static GatewayApiErrorCodeEnum valueOf(String name) =>
      _$gatewayApiErrorCodeEnumValueOf(name);
}
