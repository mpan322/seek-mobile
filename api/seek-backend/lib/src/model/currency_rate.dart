//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'currency_rate.g.dart';

/// CurrencyRate
///
/// Properties:
/// * [fromCurrencyId]
/// * [toCurrencyId]
/// * [rate]
/// * [date]
@BuiltValue()
abstract class CurrencyRate
    implements Built<CurrencyRate, CurrencyRateBuilder> {
  @BuiltValueField(wireName: r'fromCurrencyId')
  String get fromCurrencyId;

  @BuiltValueField(wireName: r'toCurrencyId')
  String get toCurrencyId;

  @BuiltValueField(wireName: r'rate')
  String get rate;

  @BuiltValueField(wireName: r'date')
  DateTime get date;

  CurrencyRate._();

  factory CurrencyRate([void updates(CurrencyRateBuilder b)]) = _$CurrencyRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurrencyRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrencyRate> get serializer => _$CurrencyRateSerializer();
}

class _$CurrencyRateSerializer implements PrimitiveSerializer<CurrencyRate> {
  @override
  final Iterable<Type> types = const [CurrencyRate, _$CurrencyRate];

  @override
  final String wireName = r'CurrencyRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrencyRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fromCurrencyId';
    yield serializers.serialize(
      object.fromCurrencyId,
      specifiedType: const FullType(String),
    );
    yield r'toCurrencyId';
    yield serializers.serialize(
      object.toCurrencyId,
      specifiedType: const FullType(String),
    );
    yield r'rate';
    yield serializers.serialize(
      object.rate,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CurrencyRate object, {
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
    required CurrencyRateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromCurrencyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fromCurrencyId = valueDes;
          break;
        case r'toCurrencyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.toCurrencyId = valueDes;
          break;
        case r'rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rate = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CurrencyRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurrencyRateBuilder();
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
