// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc20_balance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Erc20Balance extends Erc20Balance {
  @override
  final String contract;
  @override
  final String owner;
  @override
  final String balance;

  factory _$Erc20Balance([void Function(Erc20BalanceBuilder)? updates]) =>
      (Erc20BalanceBuilder()..update(updates))._build();

  _$Erc20Balance._(
      {required this.contract, required this.owner, required this.balance})
      : super._();
  @override
  Erc20Balance rebuild(void Function(Erc20BalanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc20BalanceBuilder toBuilder() => Erc20BalanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc20Balance &&
        contract == other.contract &&
        owner == other.owner &&
        balance == other.balance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Erc20Balance')
          ..add('contract', contract)
          ..add('owner', owner)
          ..add('balance', balance))
        .toString();
  }
}

class Erc20BalanceBuilder
    implements Builder<Erc20Balance, Erc20BalanceBuilder> {
  _$Erc20Balance? _$v;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  Erc20BalanceBuilder() {
    Erc20Balance._defaults(this);
  }

  Erc20BalanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contract = $v.contract;
      _owner = $v.owner;
      _balance = $v.balance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Erc20Balance other) {
    _$v = other as _$Erc20Balance;
  }

  @override
  void update(void Function(Erc20BalanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc20Balance build() => _build();

  _$Erc20Balance _build() {
    final _$result = _$v ??
        _$Erc20Balance._(
          contract: BuiltValueNullFieldError.checkNotNull(
              contract, r'Erc20Balance', 'contract'),
          owner: BuiltValueNullFieldError.checkNotNull(
              owner, r'Erc20Balance', 'owner'),
          balance: BuiltValueNullFieldError.checkNotNull(
              balance, r'Erc20Balance', 'balance'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
