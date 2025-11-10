//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_transaction_request.g.dart';

/// CreateTransactionRequest
///
/// Properties:
/// * [hash]
/// * [from]
/// * [nonce]
/// * [input]
/// * [to]
@BuiltValue()
abstract class CreateTransactionRequest
    implements
        Built<CreateTransactionRequest, CreateTransactionRequestBuilder> {
  @BuiltValueField(wireName: r'hash')
  String get hash;

  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'nonce')
  int get nonce;

  @BuiltValueField(wireName: r'input')
  String get input;

  @BuiltValueField(wireName: r'to')
  String? get to;

  CreateTransactionRequest._();

  factory CreateTransactionRequest(
          [void updates(CreateTransactionRequestBuilder b)]) =
      _$CreateTransactionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTransactionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTransactionRequest> get serializer =>
      _$CreateTransactionRequestSerializer();
}

class _$CreateTransactionRequestSerializer
    implements PrimitiveSerializer<CreateTransactionRequest> {
  @override
  final Iterable<Type> types = const [
    CreateTransactionRequest,
    _$CreateTransactionRequest
  ];

  @override
  final String wireName = r'CreateTransactionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTransactionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'nonce';
    yield serializers.serialize(
      object.nonce,
      specifiedType: const FullType(int),
    );
    yield r'input';
    yield serializers.serialize(
      object.input,
      specifiedType: const FullType(String),
    );
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTransactionRequest object, {
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
    required CreateTransactionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'nonce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nonce = valueDes;
          break;
        case r'input':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.input = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTransactionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransactionRequestBuilder();
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
