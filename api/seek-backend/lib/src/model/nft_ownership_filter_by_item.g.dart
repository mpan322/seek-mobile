// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownership_filter_by_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOwnershipFilterByItemAtTypeEnum
    _$nftOwnershipFilterByItemAtTypeEnum_byItem =
    const NftOwnershipFilterByItemAtTypeEnum._('byItem');

NftOwnershipFilterByItemAtTypeEnum _$nftOwnershipFilterByItemAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'byItem':
      return _$nftOwnershipFilterByItemAtTypeEnum_byItem;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipFilterByItemAtTypeEnum>
    _$nftOwnershipFilterByItemAtTypeEnumValues = BuiltSet<
        NftOwnershipFilterByItemAtTypeEnum>(const <NftOwnershipFilterByItemAtTypeEnum>[
  _$nftOwnershipFilterByItemAtTypeEnum_byItem,
]);

Serializer<NftOwnershipFilterByItemAtTypeEnum>
    _$nftOwnershipFilterByItemAtTypeEnumSerializer =
    _$NftOwnershipFilterByItemAtTypeEnumSerializer();

class _$NftOwnershipFilterByItemAtTypeEnumSerializer
    implements PrimitiveSerializer<NftOwnershipFilterByItemAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byItem': 'by_item',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_item': 'byItem',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOwnershipFilterByItemAtTypeEnum];
  @override
  final String wireName = 'NftOwnershipFilterByItemAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOwnershipFilterByItemAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipFilterByItemAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipFilterByItemAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipFilterByItem extends NftOwnershipFilterByItem {
  @override
  final NftOwnershipFilterByItemAtTypeEnum atType;
  @override
  final String contract;
  @override
  final String tokenId;

  factory _$NftOwnershipFilterByItem(
          [void Function(NftOwnershipFilterByItemBuilder)? updates]) =>
      (NftOwnershipFilterByItemBuilder()..update(updates))._build();

  _$NftOwnershipFilterByItem._(
      {required this.atType, required this.contract, required this.tokenId})
      : super._();
  @override
  NftOwnershipFilterByItem rebuild(
          void Function(NftOwnershipFilterByItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipFilterByItemBuilder toBuilder() =>
      NftOwnershipFilterByItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnershipFilterByItem &&
        atType == other.atType &&
        contract == other.contract &&
        tokenId == other.tokenId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOwnershipFilterByItem')
          ..add('atType', atType)
          ..add('contract', contract)
          ..add('tokenId', tokenId))
        .toString();
  }
}

class NftOwnershipFilterByItemBuilder
    implements
        Builder<NftOwnershipFilterByItem, NftOwnershipFilterByItemBuilder> {
  _$NftOwnershipFilterByItem? _$v;

  NftOwnershipFilterByItemAtTypeEnum? _atType;
  NftOwnershipFilterByItemAtTypeEnum? get atType => _$this._atType;
  set atType(NftOwnershipFilterByItemAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  NftOwnershipFilterByItemBuilder() {
    NftOwnershipFilterByItem._defaults(this);
  }

  NftOwnershipFilterByItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _contract = $v.contract;
      _tokenId = $v.tokenId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOwnershipFilterByItem other) {
    _$v = other as _$NftOwnershipFilterByItem;
  }

  @override
  void update(void Function(NftOwnershipFilterByItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnershipFilterByItem build() => _build();

  _$NftOwnershipFilterByItem _build() {
    final _$result = _$v ??
        _$NftOwnershipFilterByItem._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'NftOwnershipFilterByItem', 'atType'),
          contract: BuiltValueNullFieldError.checkNotNull(
              contract, r'NftOwnershipFilterByItem', 'contract'),
          tokenId: BuiltValueNullFieldError.checkNotNull(
              tokenId, r'NftOwnershipFilterByItem', 'tokenId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
