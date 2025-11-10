//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/erc20_balance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'erc20_balance_update_event.g.dart';

/// Erc20BalanceUpdateEvent
///
/// Properties:
/// * [balance]
/// * [type]
@BuiltValue()
abstract class Erc20BalanceUpdateEvent
    implements Built<Erc20BalanceUpdateEvent, Erc20BalanceUpdateEventBuilder> {
  @BuiltValueField(wireName: r'balance')
  Erc20Balance get balance;

  @BuiltValueField(wireName: r'type')
  Erc20BalanceUpdateEventTypeEnum? get type;
  // enum typeEnum {  UPDATE,  };

  Erc20BalanceUpdateEvent._();

  factory Erc20BalanceUpdateEvent(
          [void updates(Erc20BalanceUpdateEventBuilder b)]) =
      _$Erc20BalanceUpdateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Erc20BalanceUpdateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Erc20BalanceUpdateEvent> get serializer =>
      _$Erc20BalanceUpdateEventSerializer();
}

class _$Erc20BalanceUpdateEventSerializer
    implements PrimitiveSerializer<Erc20BalanceUpdateEvent> {
  @override
  final Iterable<Type> types = const [
    Erc20BalanceUpdateEvent,
    _$Erc20BalanceUpdateEvent
  ];

  @override
  final String wireName = r'Erc20BalanceUpdateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Erc20BalanceUpdateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'balance';
    yield serializers.serialize(
      object.balance,
      specifiedType: const FullType(Erc20Balance),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(Erc20BalanceUpdateEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Erc20BalanceUpdateEvent object, {
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
    required Erc20BalanceUpdateEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Erc20Balance),
          ) as Erc20Balance;
          result.balance.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Erc20BalanceUpdateEventTypeEnum),
          ) as Erc20BalanceUpdateEventTypeEnum;
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
  Erc20BalanceUpdateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Erc20BalanceUpdateEventBuilder();
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

class Erc20BalanceUpdateEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const Erc20BalanceUpdateEventTypeEnum UPDATE =
      _$erc20BalanceUpdateEventTypeEnum_UPDATE;

  static Serializer<Erc20BalanceUpdateEventTypeEnum> get serializer =>
      _$erc20BalanceUpdateEventTypeEnumSerializer;

  const Erc20BalanceUpdateEventTypeEnum._(String name) : super(name);

  static BuiltSet<Erc20BalanceUpdateEventTypeEnum> get values =>
      _$erc20BalanceUpdateEventTypeEnumValues;
  static Erc20BalanceUpdateEventTypeEnum valueOf(String name) =>
      _$erc20BalanceUpdateEventTypeEnumValueOf(name);
}
