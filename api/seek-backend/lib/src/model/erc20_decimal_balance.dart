//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'erc20_decimal_balance.g.dart';

/// Erc20DecimalBalance
///
/// Properties:
/// * [contract]
/// * [owner]
/// * [balance]
/// * [decimalBalance]
@BuiltValue()
abstract class Erc20DecimalBalance
    implements Built<Erc20DecimalBalance, Erc20DecimalBalanceBuilder> {
  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'owner')
  String get owner;

  @BuiltValueField(wireName: r'balance')
  String get balance;

  @BuiltValueField(wireName: r'decimalBalance')
  String get decimalBalance;

  Erc20DecimalBalance._();

  factory Erc20DecimalBalance([void updates(Erc20DecimalBalanceBuilder b)]) =
      _$Erc20DecimalBalance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Erc20DecimalBalanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Erc20DecimalBalance> get serializer =>
      _$Erc20DecimalBalanceSerializer();
}

class _$Erc20DecimalBalanceSerializer
    implements PrimitiveSerializer<Erc20DecimalBalance> {
  @override
  final Iterable<Type> types = const [
    Erc20DecimalBalance,
    _$Erc20DecimalBalance
  ];

  @override
  final String wireName = r'Erc20DecimalBalance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Erc20DecimalBalance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contract';
    yield serializers.serialize(
      object.contract,
      specifiedType: const FullType(String),
    );
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(String),
    );
    yield r'balance';
    yield serializers.serialize(
      object.balance,
      specifiedType: const FullType(String),
    );
    yield r'decimalBalance';
    yield serializers.serialize(
      object.decimalBalance,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Erc20DecimalBalance object, {
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
    required Erc20DecimalBalanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.owner = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.balance = valueDes;
          break;
        case r'decimalBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.decimalBalance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Erc20DecimalBalance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Erc20DecimalBalanceBuilder();
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
