// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_order_tx_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrepareOrderTxResponse extends PrepareOrderTxResponse {
  @override
  final Asset asset;
  @override
  final PreparedOrderTx transaction;
  @override
  final String? transferProxyAddress;

  factory _$PrepareOrderTxResponse(
          [void Function(PrepareOrderTxResponseBuilder)? updates]) =>
      (PrepareOrderTxResponseBuilder()..update(updates))._build();

  _$PrepareOrderTxResponse._(
      {required this.asset,
      required this.transaction,
      this.transferProxyAddress})
      : super._();
  @override
  PrepareOrderTxResponse rebuild(
          void Function(PrepareOrderTxResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrepareOrderTxResponseBuilder toBuilder() =>
      PrepareOrderTxResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrepareOrderTxResponse &&
        asset == other.asset &&
        transaction == other.transaction &&
        transferProxyAddress == other.transferProxyAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, asset.hashCode);
    _$hash = $jc(_$hash, transaction.hashCode);
    _$hash = $jc(_$hash, transferProxyAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrepareOrderTxResponse')
          ..add('asset', asset)
          ..add('transaction', transaction)
          ..add('transferProxyAddress', transferProxyAddress))
        .toString();
  }
}

class PrepareOrderTxResponseBuilder
    implements Builder<PrepareOrderTxResponse, PrepareOrderTxResponseBuilder> {
  _$PrepareOrderTxResponse? _$v;

  AssetBuilder? _asset;
  AssetBuilder get asset => _$this._asset ??= AssetBuilder();
  set asset(AssetBuilder? asset) => _$this._asset = asset;

  PreparedOrderTxBuilder? _transaction;
  PreparedOrderTxBuilder get transaction =>
      _$this._transaction ??= PreparedOrderTxBuilder();
  set transaction(PreparedOrderTxBuilder? transaction) =>
      _$this._transaction = transaction;

  String? _transferProxyAddress;
  String? get transferProxyAddress => _$this._transferProxyAddress;
  set transferProxyAddress(String? transferProxyAddress) =>
      _$this._transferProxyAddress = transferProxyAddress;

  PrepareOrderTxResponseBuilder() {
    PrepareOrderTxResponse._defaults(this);
  }

  PrepareOrderTxResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asset = $v.asset.toBuilder();
      _transaction = $v.transaction.toBuilder();
      _transferProxyAddress = $v.transferProxyAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrepareOrderTxResponse other) {
    _$v = other as _$PrepareOrderTxResponse;
  }

  @override
  void update(void Function(PrepareOrderTxResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrepareOrderTxResponse build() => _build();

  _$PrepareOrderTxResponse _build() {
    _$PrepareOrderTxResponse _$result;
    try {
      _$result = _$v ??
          _$PrepareOrderTxResponse._(
            asset: asset.build(),
            transaction: transaction.build(),
            transferProxyAddress: transferProxyAddress,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'asset';
        asset.build();
        _$failedField = 'transaction';
        transaction.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PrepareOrderTxResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
