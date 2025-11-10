//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/erc20_balance.dart';
import 'package:seek_backend/src/model/erc20_balance_update_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'erc20_balance_event.g.dart';

/// Erc20BalanceEvent
///
/// Properties:
/// * [eventId]
/// * [balanceId]
/// * [balance]
/// * [type]
@BuiltValue()
abstract class Erc20BalanceEvent
    implements Built<Erc20BalanceEvent, Erc20BalanceEventBuilder> {
  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  @BuiltValueField(wireName: r'balanceId')
  String get balanceId;

  /// One Of [Erc20BalanceUpdateEvent]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'UPDATE': Erc20BalanceUpdateEvent,
  };

  Erc20BalanceEvent._();

  factory Erc20BalanceEvent([void updates(Erc20BalanceEventBuilder b)]) =
      _$Erc20BalanceEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Erc20BalanceEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Erc20BalanceEvent> get serializer =>
      _$Erc20BalanceEventSerializer();
}

extension Erc20BalanceEventDiscriminatorExt on Erc20BalanceEvent {
  String? get discriminatorValue {
    if (this is Erc20BalanceUpdateEvent) {
      return r'UPDATE';
    }
    return null;
  }
}

extension Erc20BalanceEventBuilderDiscriminatorExt on Erc20BalanceEventBuilder {
  String? get discriminatorValue {
    if (this is Erc20BalanceUpdateEventBuilder) {
      return r'UPDATE';
    }
    return null;
  }
}

class _$Erc20BalanceEventSerializer
    implements PrimitiveSerializer<Erc20BalanceEvent> {
  @override
  final Iterable<Type> types = const [Erc20BalanceEvent, _$Erc20BalanceEvent];

  @override
  final String wireName = r'Erc20BalanceEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Erc20BalanceEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'eventId';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
    yield r'balanceId';
    yield serializers.serialize(
      object.balanceId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Erc20BalanceEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Erc20BalanceEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventId = valueDes;
          break;
        case r'balanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.balanceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Erc20BalanceEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Erc20BalanceEventBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(Erc20BalanceEvent.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      Erc20BalanceUpdateEvent,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'UPDATE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Erc20BalanceUpdateEvent),
        ) as Erc20BalanceUpdateEvent;
        oneOfType = Erc20BalanceUpdateEvent;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class Erc20BalanceEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const Erc20BalanceEventTypeEnum UPDATE =
      _$erc20BalanceEventTypeEnum_UPDATE;

  static Serializer<Erc20BalanceEventTypeEnum> get serializer =>
      _$erc20BalanceEventTypeEnumSerializer;

  const Erc20BalanceEventTypeEnum._(String name) : super(name);

  static BuiltSet<Erc20BalanceEventTypeEnum> get values =>
      _$erc20BalanceEventTypeEnumValues;
  static Erc20BalanceEventTypeEnum valueOf(String name) =>
      _$erc20BalanceEventTypeEnumValueOf(name);
}
