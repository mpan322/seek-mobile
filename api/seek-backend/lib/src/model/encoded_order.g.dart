// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encoded_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EncodedOrder extends EncodedOrder {
  @override
  final SignMessage signMessage;
  @override
  final String? transferProxyAddress;

  factory _$EncodedOrder([void Function(EncodedOrderBuilder)? updates]) =>
      (EncodedOrderBuilder()..update(updates))._build();

  _$EncodedOrder._({required this.signMessage, this.transferProxyAddress})
      : super._();
  @override
  EncodedOrder rebuild(void Function(EncodedOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EncodedOrderBuilder toBuilder() => EncodedOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EncodedOrder &&
        signMessage == other.signMessage &&
        transferProxyAddress == other.transferProxyAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signMessage.hashCode);
    _$hash = $jc(_$hash, transferProxyAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EncodedOrder')
          ..add('signMessage', signMessage)
          ..add('transferProxyAddress', transferProxyAddress))
        .toString();
  }
}

class EncodedOrderBuilder
    implements Builder<EncodedOrder, EncodedOrderBuilder> {
  _$EncodedOrder? _$v;

  SignMessageBuilder? _signMessage;
  SignMessageBuilder get signMessage =>
      _$this._signMessage ??= SignMessageBuilder();
  set signMessage(SignMessageBuilder? signMessage) =>
      _$this._signMessage = signMessage;

  String? _transferProxyAddress;
  String? get transferProxyAddress => _$this._transferProxyAddress;
  set transferProxyAddress(String? transferProxyAddress) =>
      _$this._transferProxyAddress = transferProxyAddress;

  EncodedOrderBuilder() {
    EncodedOrder._defaults(this);
  }

  EncodedOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signMessage = $v.signMessage.toBuilder();
      _transferProxyAddress = $v.transferProxyAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EncodedOrder other) {
    _$v = other as _$EncodedOrder;
  }

  @override
  void update(void Function(EncodedOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EncodedOrder build() => _build();

  _$EncodedOrder _build() {
    _$EncodedOrder _$result;
    try {
      _$result = _$v ??
          _$EncodedOrder._(
            signMessage: signMessage.build(),
            transferProxyAddress: transferProxyAddress,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signMessage';
        signMessage.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EncodedOrder', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
