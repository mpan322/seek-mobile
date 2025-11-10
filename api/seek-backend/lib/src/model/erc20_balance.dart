//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'erc20_balance.g.dart';

/// Erc20Balance
///
/// Properties:
/// * [contract]
/// * [owner]
/// * [balance]
@BuiltValue()
abstract class Erc20Balance
    implements Built<Erc20Balance, Erc20BalanceBuilder> {
  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'owner')
  String get owner;

  @BuiltValueField(wireName: r'balance')
  String get balance;

  Erc20Balance._();

  factory Erc20Balance([void updates(Erc20BalanceBuilder b)]) = _$Erc20Balance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Erc20BalanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Erc20Balance> get serializer => _$Erc20BalanceSerializer();
}

class _$Erc20BalanceSerializer implements PrimitiveSerializer<Erc20Balance> {
  @override
  final Iterable<Type> types = const [Erc20Balance, _$Erc20Balance];

  @override
  final String wireName = r'Erc20Balance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Erc20Balance object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Erc20Balance object, {
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
    required Erc20BalanceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Erc20Balance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Erc20BalanceBuilder();
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
