//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/asset.dart';
import 'package:seek_backend/src/model/prepared_order_tx.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prepare_order_tx_response.g.dart';

/// PrepareOrderTxResponse
///
/// Properties:
/// * [asset]
/// * [transaction]
/// * [transferProxyAddress]
@BuiltValue()
abstract class PrepareOrderTxResponse
    implements Built<PrepareOrderTxResponse, PrepareOrderTxResponseBuilder> {
  @BuiltValueField(wireName: r'asset')
  Asset get asset;

  @BuiltValueField(wireName: r'transaction')
  PreparedOrderTx get transaction;

  @BuiltValueField(wireName: r'transferProxyAddress')
  String? get transferProxyAddress;

  PrepareOrderTxResponse._();

  factory PrepareOrderTxResponse(
          [void updates(PrepareOrderTxResponseBuilder b)]) =
      _$PrepareOrderTxResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrepareOrderTxResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrepareOrderTxResponse> get serializer =>
      _$PrepareOrderTxResponseSerializer();
}

class _$PrepareOrderTxResponseSerializer
    implements PrimitiveSerializer<PrepareOrderTxResponse> {
  @override
  final Iterable<Type> types = const [
    PrepareOrderTxResponse,
    _$PrepareOrderTxResponse
  ];

  @override
  final String wireName = r'PrepareOrderTxResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrepareOrderTxResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'asset';
    yield serializers.serialize(
      object.asset,
      specifiedType: const FullType(Asset),
    );
    yield r'transaction';
    yield serializers.serialize(
      object.transaction,
      specifiedType: const FullType(PreparedOrderTx),
    );
    if (object.transferProxyAddress != null) {
      yield r'transferProxyAddress';
      yield serializers.serialize(
        object.transferProxyAddress,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrepareOrderTxResponse object, {
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
    required PrepareOrderTxResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.asset.replace(valueDes);
          break;
        case r'transaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PreparedOrderTx),
          ) as PreparedOrderTx;
          result.transaction.replace(valueDes);
          break;
        case r'transferProxyAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transferProxyAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrepareOrderTxResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrepareOrderTxResponseBuilder();
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
