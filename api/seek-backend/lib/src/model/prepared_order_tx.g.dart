// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepared_order_tx.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreparedOrderTx extends PreparedOrderTx {
  @override
  final String to;
  @override
  final String data;

  factory _$PreparedOrderTx([void Function(PreparedOrderTxBuilder)? updates]) =>
      (PreparedOrderTxBuilder()..update(updates))._build();

  _$PreparedOrderTx._({required this.to, required this.data}) : super._();
  @override
  PreparedOrderTx rebuild(void Function(PreparedOrderTxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreparedOrderTxBuilder toBuilder() => PreparedOrderTxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreparedOrderTx && to == other.to && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreparedOrderTx')
          ..add('to', to)
          ..add('data', data))
        .toString();
  }
}

class PreparedOrderTxBuilder
    implements Builder<PreparedOrderTx, PreparedOrderTxBuilder> {
  _$PreparedOrderTx? _$v;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  PreparedOrderTxBuilder() {
    PreparedOrderTx._defaults(this);
  }

  PreparedOrderTxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _to = $v.to;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreparedOrderTx other) {
    _$v = other as _$PreparedOrderTx;
  }

  @override
  void update(void Function(PreparedOrderTxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreparedOrderTx build() => _build();

  _$PreparedOrderTx _build() {
    final _$result = _$v ??
        _$PreparedOrderTx._(
          to: BuiltValueNullFieldError.checkNotNull(
              to, r'PreparedOrderTx', 'to'),
          data: BuiltValueNullFieldError.checkNotNull(
              data, r'PreparedOrderTx', 'data'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
