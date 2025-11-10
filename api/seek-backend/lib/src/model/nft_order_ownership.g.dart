// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_ownership.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftOrderOwnership extends NftOrderOwnership {
  @override
  final String id;
  @override
  final String contract;
  @override
  final String tokenId;
  @override
  final String owner;
  @override
  final String value;
  @override
  final String lazyValue;
  @override
  final DateTime date;
  @override
  final BuiltList<ItemHistory> pending;
  @override
  final BuiltList<ModelPart>? creators;
  @override
  final Order? bestSellOrder;

  factory _$NftOrderOwnership(
          [void Function(NftOrderOwnershipBuilder)? updates]) =>
      (NftOrderOwnershipBuilder()..update(updates))._build();

  _$NftOrderOwnership._(
      {required this.id,
      required this.contract,
      required this.tokenId,
      required this.owner,
      required this.value,
      required this.lazyValue,
      required this.date,
      required this.pending,
      this.creators,
      this.bestSellOrder})
      : super._();
  @override
  NftOrderOwnership rebuild(void Function(NftOrderOwnershipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderOwnershipBuilder toBuilder() =>
      NftOrderOwnershipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderOwnership &&
        id == other.id &&
        contract == other.contract &&
        tokenId == other.tokenId &&
        owner == other.owner &&
        value == other.value &&
        lazyValue == other.lazyValue &&
        date == other.date &&
        pending == other.pending &&
        creators == other.creators &&
        bestSellOrder == other.bestSellOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, lazyValue.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, creators.hashCode);
    _$hash = $jc(_$hash, bestSellOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOrderOwnership')
          ..add('id', id)
          ..add('contract', contract)
          ..add('tokenId', tokenId)
          ..add('owner', owner)
          ..add('value', value)
          ..add('lazyValue', lazyValue)
          ..add('date', date)
          ..add('pending', pending)
          ..add('creators', creators)
          ..add('bestSellOrder', bestSellOrder))
        .toString();
  }
}

class NftOrderOwnershipBuilder
    implements Builder<NftOrderOwnership, NftOrderOwnershipBuilder> {
  _$NftOrderOwnership? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _lazyValue;
  String? get lazyValue => _$this._lazyValue;
  set lazyValue(String? lazyValue) => _$this._lazyValue = lazyValue;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  ListBuilder<ItemHistory>? _pending;
  ListBuilder<ItemHistory> get pending =>
      _$this._pending ??= ListBuilder<ItemHistory>();
  set pending(ListBuilder<ItemHistory>? pending) => _$this._pending = pending;

  ListBuilder<ModelPart>? _creators;
  ListBuilder<ModelPart> get creators =>
      _$this._creators ??= ListBuilder<ModelPart>();
  set creators(ListBuilder<ModelPart>? creators) => _$this._creators = creators;

  OrderBuilder? _bestSellOrder;
  OrderBuilder get bestSellOrder => _$this._bestSellOrder ??= OrderBuilder();
  set bestSellOrder(OrderBuilder? bestSellOrder) =>
      _$this._bestSellOrder = bestSellOrder;

  NftOrderOwnershipBuilder() {
    NftOrderOwnership._defaults(this);
  }

  NftOrderOwnershipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _contract = $v.contract;
      _tokenId = $v.tokenId;
      _owner = $v.owner;
      _value = $v.value;
      _lazyValue = $v.lazyValue;
      _date = $v.date;
      _pending = $v.pending.toBuilder();
      _creators = $v.creators?.toBuilder();
      _bestSellOrder = $v.bestSellOrder?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderOwnership other) {
    _$v = other as _$NftOrderOwnership;
  }

  @override
  void update(void Function(NftOrderOwnershipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderOwnership build() => _build();

  _$NftOrderOwnership _build() {
    _$NftOrderOwnership _$result;
    try {
      _$result = _$v ??
          _$NftOrderOwnership._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NftOrderOwnership', 'id'),
            contract: BuiltValueNullFieldError.checkNotNull(
                contract, r'NftOrderOwnership', 'contract'),
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'NftOrderOwnership', 'tokenId'),
            owner: BuiltValueNullFieldError.checkNotNull(
                owner, r'NftOrderOwnership', 'owner'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'NftOrderOwnership', 'value'),
            lazyValue: BuiltValueNullFieldError.checkNotNull(
                lazyValue, r'NftOrderOwnership', 'lazyValue'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'NftOrderOwnership', 'date'),
            pending: pending.build(),
            creators: _creators?.build(),
            bestSellOrder: _bestSellOrder?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pending';
        pending.build();
        _$failedField = 'creators';
        _creators?.build();
        _$failedField = 'bestSellOrder';
        _bestSellOrder?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftOrderOwnership', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
