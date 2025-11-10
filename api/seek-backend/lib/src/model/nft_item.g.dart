// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftItem extends NftItem {
  @override
  final String id;
  @override
  final String contract;
  @override
  final String tokenId;
  @override
  final BuiltList<ModelPart> creators;
  @override
  final String supply;
  @override
  final String lazySupply;
  @override
  final BuiltList<String> owners;
  @override
  final BuiltList<ModelPart> royalties;
  @override
  final DateTime? date;
  @override
  final BuiltList<ItemTransfer>? pending;
  @override
  final bool? deleted;
  @override
  final NftItemMeta? meta;

  factory _$NftItem([void Function(NftItemBuilder)? updates]) =>
      (NftItemBuilder()..update(updates))._build();

  _$NftItem._(
      {required this.id,
      required this.contract,
      required this.tokenId,
      required this.creators,
      required this.supply,
      required this.lazySupply,
      required this.owners,
      required this.royalties,
      this.date,
      this.pending,
      this.deleted,
      this.meta})
      : super._();
  @override
  NftItem rebuild(void Function(NftItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemBuilder toBuilder() => NftItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItem &&
        id == other.id &&
        contract == other.contract &&
        tokenId == other.tokenId &&
        creators == other.creators &&
        supply == other.supply &&
        lazySupply == other.lazySupply &&
        owners == other.owners &&
        royalties == other.royalties &&
        date == other.date &&
        pending == other.pending &&
        deleted == other.deleted &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, creators.hashCode);
    _$hash = $jc(_$hash, supply.hashCode);
    _$hash = $jc(_$hash, lazySupply.hashCode);
    _$hash = $jc(_$hash, owners.hashCode);
    _$hash = $jc(_$hash, royalties.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftItem')
          ..add('id', id)
          ..add('contract', contract)
          ..add('tokenId', tokenId)
          ..add('creators', creators)
          ..add('supply', supply)
          ..add('lazySupply', lazySupply)
          ..add('owners', owners)
          ..add('royalties', royalties)
          ..add('date', date)
          ..add('pending', pending)
          ..add('deleted', deleted)
          ..add('meta', meta))
        .toString();
  }
}

class NftItemBuilder implements Builder<NftItem, NftItemBuilder> {
  _$NftItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  ListBuilder<ModelPart>? _creators;
  ListBuilder<ModelPart> get creators =>
      _$this._creators ??= ListBuilder<ModelPart>();
  set creators(ListBuilder<ModelPart>? creators) => _$this._creators = creators;

  String? _supply;
  String? get supply => _$this._supply;
  set supply(String? supply) => _$this._supply = supply;

  String? _lazySupply;
  String? get lazySupply => _$this._lazySupply;
  set lazySupply(String? lazySupply) => _$this._lazySupply = lazySupply;

  ListBuilder<String>? _owners;
  ListBuilder<String> get owners => _$this._owners ??= ListBuilder<String>();
  set owners(ListBuilder<String>? owners) => _$this._owners = owners;

  ListBuilder<ModelPart>? _royalties;
  ListBuilder<ModelPart> get royalties =>
      _$this._royalties ??= ListBuilder<ModelPart>();
  set royalties(ListBuilder<ModelPart>? royalties) =>
      _$this._royalties = royalties;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  ListBuilder<ItemTransfer>? _pending;
  ListBuilder<ItemTransfer> get pending =>
      _$this._pending ??= ListBuilder<ItemTransfer>();
  set pending(ListBuilder<ItemTransfer>? pending) => _$this._pending = pending;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  NftItemMetaBuilder? _meta;
  NftItemMetaBuilder get meta => _$this._meta ??= NftItemMetaBuilder();
  set meta(NftItemMetaBuilder? meta) => _$this._meta = meta;

  NftItemBuilder() {
    NftItem._defaults(this);
  }

  NftItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _contract = $v.contract;
      _tokenId = $v.tokenId;
      _creators = $v.creators.toBuilder();
      _supply = $v.supply;
      _lazySupply = $v.lazySupply;
      _owners = $v.owners.toBuilder();
      _royalties = $v.royalties.toBuilder();
      _date = $v.date;
      _pending = $v.pending?.toBuilder();
      _deleted = $v.deleted;
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItem other) {
    _$v = other as _$NftItem;
  }

  @override
  void update(void Function(NftItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItem build() => _build();

  _$NftItem _build() {
    _$NftItem _$result;
    try {
      _$result = _$v ??
          _$NftItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'NftItem', 'id'),
            contract: BuiltValueNullFieldError.checkNotNull(
                contract, r'NftItem', 'contract'),
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'NftItem', 'tokenId'),
            creators: creators.build(),
            supply: BuiltValueNullFieldError.checkNotNull(
                supply, r'NftItem', 'supply'),
            lazySupply: BuiltValueNullFieldError.checkNotNull(
                lazySupply, r'NftItem', 'lazySupply'),
            owners: owners.build(),
            royalties: royalties.build(),
            date: date,
            pending: _pending?.build(),
            deleted: deleted,
            meta: _meta?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creators';
        creators.build();

        _$failedField = 'owners';
        owners.build();
        _$failedField = 'royalties';
        royalties.build();

        _$failedField = 'pending';
        _pending?.build();

        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
