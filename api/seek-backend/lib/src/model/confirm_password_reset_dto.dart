//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'confirm_password_reset_dto.g.dart';

/// ConfirmPasswordResetDto
///
/// Properties:
/// * [userId]
/// * [token]
/// * [newPassword]
@BuiltValue()
abstract class ConfirmPasswordResetDto
    implements Built<ConfirmPasswordResetDto, ConfirmPasswordResetDtoBuilder> {
  @BuiltValueField(wireName: r'userId')
  String get userId;

  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'newPassword')
  String get newPassword;

  ConfirmPasswordResetDto._();

  factory ConfirmPasswordResetDto(
          [void updates(ConfirmPasswordResetDtoBuilder b)]) =
      _$ConfirmPasswordResetDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConfirmPasswordResetDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConfirmPasswordResetDto> get serializer =>
      _$ConfirmPasswordResetDtoSerializer();
}

class _$ConfirmPasswordResetDtoSerializer
    implements PrimitiveSerializer<ConfirmPasswordResetDto> {
  @override
  final Iterable<Type> types = const [
    ConfirmPasswordResetDto,
    _$ConfirmPasswordResetDto
  ];

  @override
  final String wireName = r'ConfirmPasswordResetDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConfirmPasswordResetDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'newPassword';
    yield serializers.serialize(
      object.newPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConfirmPasswordResetDto object, {
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
    required ConfirmPasswordResetDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'newPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConfirmPasswordResetDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmPasswordResetDtoBuilder();
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
