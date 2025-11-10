// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_deleted_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftOrderDeletedItem extends NftOrderDeletedItem {
  @override
  final String id;
  @override
  final String token;
  @override
  final String tokenId;

  factory _$NftOrderDeletedItem(
          [void Function(NftOrderDeletedItemBuilder)? updates]) =>
      (NftOrderDeletedItemBuilder()..update(updates))._build();

  _$NftOrderDeletedItem._(
      {required this.id, required this.token, required this.tokenId})
      : super._();
  @override
  NftOrderDeletedItem rebuild(
          void Function(NftOrderDeletedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderDeletedItemBuilder toBuilder() =>
      NftOrderDeletedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderDeletedItem &&
        id == other.id &&
        token == other.token &&
        tokenId == other.tokenId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOrderDeletedItem')
          ..add('id', id)
          ..add('token', token)
          ..add('tokenId', tokenId))
        .toString();
  }
}

class NftOrderDeletedItemBuilder
    implements Builder<NftOrderDeletedItem, NftOrderDeletedItemBuilder> {
  _$NftOrderDeletedItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  NftOrderDeletedItemBuilder() {
    NftOrderDeletedItem._defaults(this);
  }

  NftOrderDeletedItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _token = $v.token;
      _tokenId = $v.tokenId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderDeletedItem other) {
    _$v = other as _$NftOrderDeletedItem;
  }

  @override
  void update(void Function(NftOrderDeletedItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderDeletedItem build() => _build();

  _$NftOrderDeletedItem _build() {
    final _$result = _$v ??
        _$NftOrderDeletedItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'NftOrderDeletedItem', 'id'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'NftOrderDeletedItem', 'token'),
          tokenId: BuiltValueNullFieldError.checkNotNull(
              tokenId, r'NftOrderDeletedItem', 'tokenId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
