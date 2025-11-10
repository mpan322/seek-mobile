// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftOrderItem extends NftOrderItem {
  @override
  final String id;
  @override
  final String contract;
  @override
  final String tokenId;
  @override
  final bool unlockable;
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
  final DateTime date;
  @override
  final BuiltList<ItemTransfer> pending;
  @override
  final String totalStock;
  @override
  final int sellers;
  @override
  final NftItemMeta? meta;
  @override
  final Order? bestSellOrder;
  @override
  final Order? bestBidOrder;

  factory _$NftOrderItem([void Function(NftOrderItemBuilder)? updates]) =>
      (NftOrderItemBuilder()..update(updates))._build();

  _$NftOrderItem._(
      {required this.id,
      required this.contract,
      required this.tokenId,
      required this.unlockable,
      required this.creators,
      required this.supply,
      required this.lazySupply,
      required this.owners,
      required this.royalties,
      required this.date,
      required this.pending,
      required this.totalStock,
      required this.sellers,
      this.meta,
      this.bestSellOrder,
      this.bestBidOrder})
      : super._();
  @override
  NftOrderItem rebuild(void Function(NftOrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderItemBuilder toBuilder() => NftOrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderItem &&
        id == other.id &&
        contract == other.contract &&
        tokenId == other.tokenId &&
        unlockable == other.unlockable &&
        creators == other.creators &&
        supply == other.supply &&
        lazySupply == other.lazySupply &&
        owners == other.owners &&
        royalties == other.royalties &&
        date == other.date &&
        pending == other.pending &&
        totalStock == other.totalStock &&
        sellers == other.sellers &&
        meta == other.meta &&
        bestSellOrder == other.bestSellOrder &&
        bestBidOrder == other.bestBidOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, unlockable.hashCode);
    _$hash = $jc(_$hash, creators.hashCode);
    _$hash = $jc(_$hash, supply.hashCode);
    _$hash = $jc(_$hash, lazySupply.hashCode);
    _$hash = $jc(_$hash, owners.hashCode);
    _$hash = $jc(_$hash, royalties.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, totalStock.hashCode);
    _$hash = $jc(_$hash, sellers.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, bestSellOrder.hashCode);
    _$hash = $jc(_$hash, bestBidOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOrderItem')
          ..add('id', id)
          ..add('contract', contract)
          ..add('tokenId', tokenId)
          ..add('unlockable', unlockable)
          ..add('creators', creators)
          ..add('supply', supply)
          ..add('lazySupply', lazySupply)
          ..add('owners', owners)
          ..add('royalties', royalties)
          ..add('date', date)
          ..add('pending', pending)
          ..add('totalStock', totalStock)
          ..add('sellers', sellers)
          ..add('meta', meta)
          ..add('bestSellOrder', bestSellOrder)
          ..add('bestBidOrder', bestBidOrder))
        .toString();
  }
}

class NftOrderItemBuilder
    implements Builder<NftOrderItem, NftOrderItemBuilder> {
  _$NftOrderItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  bool? _unlockable;
  bool? get unlockable => _$this._unlockable;
  set unlockable(bool? unlockable) => _$this._unlockable = unlockable;

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

  String? _totalStock;
  String? get totalStock => _$this._totalStock;
  set totalStock(String? totalStock) => _$this._totalStock = totalStock;

  int? _sellers;
  int? get sellers => _$this._sellers;
  set sellers(int? sellers) => _$this._sellers = sellers;

  NftItemMetaBuilder? _meta;
  NftItemMetaBuilder get meta => _$this._meta ??= NftItemMetaBuilder();
  set meta(NftItemMetaBuilder? meta) => _$this._meta = meta;

  OrderBuilder? _bestSellOrder;
  OrderBuilder get bestSellOrder => _$this._bestSellOrder ??= OrderBuilder();
  set bestSellOrder(OrderBuilder? bestSellOrder) =>
      _$this._bestSellOrder = bestSellOrder;

  OrderBuilder? _bestBidOrder;
  OrderBuilder get bestBidOrder => _$this._bestBidOrder ??= OrderBuilder();
  set bestBidOrder(OrderBuilder? bestBidOrder) =>
      _$this._bestBidOrder = bestBidOrder;

  NftOrderItemBuilder() {
    NftOrderItem._defaults(this);
  }

  NftOrderItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _contract = $v.contract;
      _tokenId = $v.tokenId;
      _unlockable = $v.unlockable;
      _creators = $v.creators.toBuilder();
      _supply = $v.supply;
      _lazySupply = $v.lazySupply;
      _owners = $v.owners.toBuilder();
      _royalties = $v.royalties.toBuilder();
      _date = $v.date;
      _pending = $v.pending.toBuilder();
      _totalStock = $v.totalStock;
      _sellers = $v.sellers;
      _meta = $v.meta?.toBuilder();
      _bestSellOrder = $v.bestSellOrder?.toBuilder();
      _bestBidOrder = $v.bestBidOrder?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderItem other) {
    _$v = other as _$NftOrderItem;
  }

  @override
  void update(void Function(NftOrderItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderItem build() => _build();

  _$NftOrderItem _build() {
    _$NftOrderItem _$result;
    try {
      _$result = _$v ??
          _$NftOrderItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NftOrderItem', 'id'),
            contract: BuiltValueNullFieldError.checkNotNull(
                contract, r'NftOrderItem', 'contract'),
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'NftOrderItem', 'tokenId'),
            unlockable: BuiltValueNullFieldError.checkNotNull(
                unlockable, r'NftOrderItem', 'unlockable'),
            creators: creators.build(),
            supply: BuiltValueNullFieldError.checkNotNull(
                supply, r'NftOrderItem', 'supply'),
            lazySupply: BuiltValueNullFieldError.checkNotNull(
                lazySupply, r'NftOrderItem', 'lazySupply'),
            owners: owners.build(),
            royalties: royalties.build(),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'NftOrderItem', 'date'),
            pending: pending.build(),
            totalStock: BuiltValueNullFieldError.checkNotNull(
                totalStock, r'NftOrderItem', 'totalStock'),
            sellers: BuiltValueNullFieldError.checkNotNull(
                sellers, r'NftOrderItem', 'sellers'),
            meta: _meta?.build(),
            bestSellOrder: _bestSellOrder?.build(),
            bestBidOrder: _bestBidOrder?.build(),
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
        pending.build();

        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'bestSellOrder';
        _bestSellOrder?.build();
        _$failedField = 'bestBidOrder';
        _bestBidOrder?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftOrderItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
