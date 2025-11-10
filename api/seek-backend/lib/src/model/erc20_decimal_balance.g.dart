// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc20_decimal_balance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Erc20DecimalBalance extends Erc20DecimalBalance {
  @override
  final String contract;
  @override
  final String owner;
  @override
  final String balance;
  @override
  final String decimalBalance;

  factory _$Erc20DecimalBalance(
          [void Function(Erc20DecimalBalanceBuilder)? updates]) =>
      (Erc20DecimalBalanceBuilder()..update(updates))._build();

  _$Erc20DecimalBalance._(
      {required this.contract,
      required this.owner,
      required this.balance,
      required this.decimalBalance})
      : super._();
  @override
  Erc20DecimalBalance rebuild(
          void Function(Erc20DecimalBalanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc20DecimalBalanceBuilder toBuilder() =>
      Erc20DecimalBalanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc20DecimalBalance &&
        contract == other.contract &&
        owner == other.owner &&
        balance == other.balance &&
        decimalBalance == other.decimalBalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, decimalBalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Erc20DecimalBalance')
          ..add('contract', contract)
          ..add('owner', owner)
          ..add('balance', balance)
          ..add('decimalBalance', decimalBalance))
        .toString();
  }
}

class Erc20DecimalBalanceBuilder
    implements Builder<Erc20DecimalBalance, Erc20DecimalBalanceBuilder> {
  _$Erc20DecimalBalance? _$v;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  String? _decimalBalance;
  String? get decimalBalance => _$this._decimalBalance;
  set decimalBalance(String? decimalBalance) =>
      _$this._decimalBalance = decimalBalance;

  Erc20DecimalBalanceBuilder() {
    Erc20DecimalBalance._defaults(this);
  }

  Erc20DecimalBalanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contract = $v.contract;
      _owner = $v.owner;
      _balance = $v.balance;
      _decimalBalance = $v.decimalBalance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Erc20DecimalBalance other) {
    _$v = other as _$Erc20DecimalBalance;
  }

  @override
  void update(void Function(Erc20DecimalBalanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc20DecimalBalance build() => _build();

  _$Erc20DecimalBalance _build() {
    final _$result = _$v ??
        _$Erc20DecimalBalance._(
          contract: BuiltValueNullFieldError.checkNotNull(
              contract, r'Erc20DecimalBalance', 'contract'),
          owner: BuiltValueNullFieldError.checkNotNull(
              owner, r'Erc20DecimalBalance', 'owner'),
          balance: BuiltValueNullFieldError.checkNotNull(
              balance, r'Erc20DecimalBalance', 'balance'),
          decimalBalance: BuiltValueNullFieldError.checkNotNull(
              decimalBalance, r'Erc20DecimalBalance', 'decimalBalance'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
