// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc20_balance_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Erc20BalanceEventTypeEnum _$erc20BalanceEventTypeEnum_UPDATE =
    const Erc20BalanceEventTypeEnum._('UPDATE');

Erc20BalanceEventTypeEnum _$erc20BalanceEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$erc20BalanceEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Erc20BalanceEventTypeEnum> _$erc20BalanceEventTypeEnumValues =
    BuiltSet<Erc20BalanceEventTypeEnum>(const <Erc20BalanceEventTypeEnum>[
  _$erc20BalanceEventTypeEnum_UPDATE,
]);

Serializer<Erc20BalanceEventTypeEnum> _$erc20BalanceEventTypeEnumSerializer =
    _$Erc20BalanceEventTypeEnumSerializer();

class _$Erc20BalanceEventTypeEnumSerializer
    implements PrimitiveSerializer<Erc20BalanceEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[Erc20BalanceEventTypeEnum];
  @override
  final String wireName = 'Erc20BalanceEventTypeEnum';

  @override
  Object serialize(Serializers serializers, Erc20BalanceEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Erc20BalanceEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Erc20BalanceEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Erc20BalanceEvent extends Erc20BalanceEvent {
  @override
  final String eventId;
  @override
  final String balanceId;
  @override
  final OneOf oneOf;

  factory _$Erc20BalanceEvent(
          [void Function(Erc20BalanceEventBuilder)? updates]) =>
      (Erc20BalanceEventBuilder()..update(updates))._build();

  _$Erc20BalanceEvent._(
      {required this.eventId, required this.balanceId, required this.oneOf})
      : super._();
  @override
  Erc20BalanceEvent rebuild(void Function(Erc20BalanceEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc20BalanceEventBuilder toBuilder() =>
      Erc20BalanceEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc20BalanceEvent &&
        eventId == other.eventId &&
        balanceId == other.balanceId &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, balanceId.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Erc20BalanceEvent')
          ..add('eventId', eventId)
          ..add('balanceId', balanceId)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class Erc20BalanceEventBuilder
    implements Builder<Erc20BalanceEvent, Erc20BalanceEventBuilder> {
  _$Erc20BalanceEvent? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _balanceId;
  String? get balanceId => _$this._balanceId;
  set balanceId(String? balanceId) => _$this._balanceId = balanceId;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  Erc20BalanceEventBuilder() {
    Erc20BalanceEvent._defaults(this);
  }

  Erc20BalanceEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _balanceId = $v.balanceId;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Erc20BalanceEvent other) {
    _$v = other as _$Erc20BalanceEvent;
  }

  @override
  void update(void Function(Erc20BalanceEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc20BalanceEvent build() => _build();

  _$Erc20BalanceEvent _build() {
    final _$result = _$v ??
        _$Erc20BalanceEvent._(
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'Erc20BalanceEvent', 'eventId'),
          balanceId: BuiltValueNullFieldError.checkNotNull(
              balanceId, r'Erc20BalanceEvent', 'balanceId'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'Erc20BalanceEvent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
