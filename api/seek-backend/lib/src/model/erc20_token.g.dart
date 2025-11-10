// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc20_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Erc20Token extends Erc20Token {
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? symbol;

  factory _$Erc20Token([void Function(Erc20TokenBuilder)? updates]) =>
      (Erc20TokenBuilder()..update(updates))._build();

  _$Erc20Token._({required this.id, this.name, this.symbol}) : super._();
  @override
  Erc20Token rebuild(void Function(Erc20TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc20TokenBuilder toBuilder() => Erc20TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc20Token &&
        id == other.id &&
        name == other.name &&
        symbol == other.symbol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Erc20Token')
          ..add('id', id)
          ..add('name', name)
          ..add('symbol', symbol))
        .toString();
  }
}

class Erc20TokenBuilder implements Builder<Erc20Token, Erc20TokenBuilder> {
  _$Erc20Token? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  Erc20TokenBuilder() {
    Erc20Token._defaults(this);
  }

  Erc20TokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _symbol = $v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Erc20Token other) {
    _$v = other as _$Erc20Token;
  }

  @override
  void update(void Function(Erc20TokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc20Token build() => _build();

  _$Erc20Token _build() {
    final _$result = _$v ??
        _$Erc20Token._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Erc20Token', 'id'),
          name: name,
          symbol: symbol,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
