//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'currency_api_error.g.dart';

/// CurrencyApiError
///
/// Properties:
/// * [status]
/// * [code]
/// * [message]
@BuiltValue()
abstract class CurrencyApiError
    implements Built<CurrencyApiError, CurrencyApiErrorBuilder> {
  @BuiltValueField(wireName: r'status')
  int get status;

  @BuiltValueField(wireName: r'code')
  CurrencyApiErrorCodeEnum get code;
  // enum codeEnum {  UNKNOWN,  VALIDATION,  FIRST_TEMPLATE_OBJECT_NOT_FOUND,  SECOND_TEMPLATE_OBJECT_NOT_FOUND,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  CurrencyApiError._();

  factory CurrencyApiError([void updates(CurrencyApiErrorBuilder b)]) =
      _$CurrencyApiError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurrencyApiErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrencyApiError> get serializer =>
      _$CurrencyApiErrorSerializer();
}

class _$CurrencyApiErrorSerializer
    implements PrimitiveSerializer<CurrencyApiError> {
  @override
  final Iterable<Type> types = const [CurrencyApiError, _$CurrencyApiError];

  @override
  final String wireName = r'CurrencyApiError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrencyApiError object, {
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
      specifiedType: const FullType(CurrencyApiErrorCodeEnum),
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
    CurrencyApiError object, {
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
    required CurrencyApiErrorBuilder result,
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
            specifiedType: const FullType(CurrencyApiErrorCodeEnum),
          ) as CurrencyApiErrorCodeEnum;
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
  CurrencyApiError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurrencyApiErrorBuilder();
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

class CurrencyApiErrorCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const CurrencyApiErrorCodeEnum UNKNOWN =
      _$currencyApiErrorCodeEnum_UNKNOWN;
  @BuiltValueEnumConst(wireName: r'VALIDATION')
  static const CurrencyApiErrorCodeEnum VALIDATION =
      _$currencyApiErrorCodeEnum_VALIDATION;
  @BuiltValueEnumConst(wireName: r'FIRST_TEMPLATE_OBJECT_NOT_FOUND')
  static const CurrencyApiErrorCodeEnum FIRST_TEMPLATE_OBJECT_NOT_FOUND =
      _$currencyApiErrorCodeEnum_FIRST_TEMPLATE_OBJECT_NOT_FOUND;
  @BuiltValueEnumConst(wireName: r'SECOND_TEMPLATE_OBJECT_NOT_FOUND')
  static const CurrencyApiErrorCodeEnum SECOND_TEMPLATE_OBJECT_NOT_FOUND =
      _$currencyApiErrorCodeEnum_SECOND_TEMPLATE_OBJECT_NOT_FOUND;

  static Serializer<CurrencyApiErrorCodeEnum> get serializer =>
      _$currencyApiErrorCodeEnumSerializer;

  const CurrencyApiErrorCodeEnum._(String name) : super(name);

  static BuiltSet<CurrencyApiErrorCodeEnum> get values =>
      _$currencyApiErrorCodeEnumValues;
  static CurrencyApiErrorCodeEnum valueOf(String name) =>
      _$currencyApiErrorCodeEnumValueOf(name);
}
