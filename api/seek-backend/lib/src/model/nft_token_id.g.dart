// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_token_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftTokenId extends NftTokenId {
  @override
  final String tokenId;
  @override
  final NftSignature signature;

  factory _$NftTokenId([void Function(NftTokenIdBuilder)? updates]) =>
      (NftTokenIdBuilder()..update(updates))._build();

  _$NftTokenId._({required this.tokenId, required this.signature}) : super._();
  @override
  NftTokenId rebuild(void Function(NftTokenIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftTokenIdBuilder toBuilder() => NftTokenIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftTokenId &&
        tokenId == other.tokenId &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftTokenId')
          ..add('tokenId', tokenId)
          ..add('signature', signature))
        .toString();
  }
}

class NftTokenIdBuilder implements Builder<NftTokenId, NftTokenIdBuilder> {
  _$NftTokenId? _$v;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  NftSignatureBuilder? _signature;
  NftSignatureBuilder get signature =>
      _$this._signature ??= NftSignatureBuilder();
  set signature(NftSignatureBuilder? signature) =>
      _$this._signature = signature;

  NftTokenIdBuilder() {
    NftTokenId._defaults(this);
  }

  NftTokenIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenId = $v.tokenId;
      _signature = $v.signature.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftTokenId other) {
    _$v = other as _$NftTokenId;
  }

  @override
  void update(void Function(NftTokenIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftTokenId build() => _build();

  _$NftTokenId _build() {
    _$NftTokenId _$result;
    try {
      _$result = _$v ??
          _$NftTokenId._(
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'NftTokenId', 'tokenId'),
            signature: signature.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signature';
        signature.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftTokenId', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
