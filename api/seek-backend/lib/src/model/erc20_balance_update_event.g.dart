// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc20_balance_update_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Erc20BalanceUpdateEventTypeEnum _$erc20BalanceUpdateEventTypeEnum_UPDATE =
    const Erc20BalanceUpdateEventTypeEnum._('UPDATE');

Erc20BalanceUpdateEventTypeEnum _$erc20BalanceUpdateEventTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'UPDATE':
      return _$erc20BalanceUpdateEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Erc20BalanceUpdateEventTypeEnum>
    _$erc20BalanceUpdateEventTypeEnumValues = BuiltSet<
        Erc20BalanceUpdateEventTypeEnum>(const <Erc20BalanceUpdateEventTypeEnum>[
  _$erc20BalanceUpdateEventTypeEnum_UPDATE,
]);

Serializer<Erc20BalanceUpdateEventTypeEnum>
    _$erc20BalanceUpdateEventTypeEnumSerializer =
    _$Erc20BalanceUpdateEventTypeEnumSerializer();

class _$Erc20BalanceUpdateEventTypeEnumSerializer
    implements PrimitiveSerializer<Erc20BalanceUpdateEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[Erc20BalanceUpdateEventTypeEnum];
  @override
  final String wireName = 'Erc20BalanceUpdateEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, Erc20BalanceUpdateEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Erc20BalanceUpdateEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Erc20BalanceUpdateEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Erc20BalanceUpdateEvent extends Erc20BalanceUpdateEvent {
  @override
  final Erc20Balance balance;
  @override
  final Erc20BalanceUpdateEventTypeEnum? type;

  factory _$Erc20BalanceUpdateEvent(
          [void Function(Erc20BalanceUpdateEventBuilder)? updates]) =>
      (Erc20BalanceUpdateEventBuilder()..update(updates))._build();

  _$Erc20BalanceUpdateEvent._({required this.balance, this.type}) : super._();
  @override
  Erc20BalanceUpdateEvent rebuild(
          void Function(Erc20BalanceUpdateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc20BalanceUpdateEventBuilder toBuilder() =>
      Erc20BalanceUpdateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc20BalanceUpdateEvent &&
        balance == other.balance &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Erc20BalanceUpdateEvent')
          ..add('balance', balance)
          ..add('type', type))
        .toString();
  }
}

class Erc20BalanceUpdateEventBuilder
    implements
        Builder<Erc20BalanceUpdateEvent, Erc20BalanceUpdateEventBuilder> {
  _$Erc20BalanceUpdateEvent? _$v;

  Erc20BalanceBuilder? _balance;
  Erc20BalanceBuilder get balance => _$this._balance ??= Erc20BalanceBuilder();
  set balance(Erc20BalanceBuilder? balance) => _$this._balance = balance;

  Erc20BalanceUpdateEventTypeEnum? _type;
  Erc20BalanceUpdateEventTypeEnum? get type => _$this._type;
  set type(Erc20BalanceUpdateEventTypeEnum? type) => _$this._type = type;

  Erc20BalanceUpdateEventBuilder() {
    Erc20BalanceUpdateEvent._defaults(this);
  }

  Erc20BalanceUpdateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _balance = $v.balance.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Erc20BalanceUpdateEvent other) {
    _$v = other as _$Erc20BalanceUpdateEvent;
  }

  @override
  void update(void Function(Erc20BalanceUpdateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc20BalanceUpdateEvent build() => _build();

  _$Erc20BalanceUpdateEvent _build() {
    _$Erc20BalanceUpdateEvent _$result;
    try {
      _$result = _$v ??
          _$Erc20BalanceUpdateEvent._(
            balance: balance.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'balance';
        balance.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Erc20BalanceUpdateEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
