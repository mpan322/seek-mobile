// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftCollectionTypeEnum _$nftCollectionTypeEnum_eRC721 =
    const NftCollectionTypeEnum._('eRC721');
const NftCollectionTypeEnum _$nftCollectionTypeEnum_eRC1155 =
    const NftCollectionTypeEnum._('eRC1155');
const NftCollectionTypeEnum _$nftCollectionTypeEnum_CRYPTO_PUNKS =
    const NftCollectionTypeEnum._('CRYPTO_PUNKS');

NftCollectionTypeEnum _$nftCollectionTypeEnumValueOf(String name) {
  switch (name) {
    case 'eRC721':
      return _$nftCollectionTypeEnum_eRC721;
    case 'eRC1155':
      return _$nftCollectionTypeEnum_eRC1155;
    case 'CRYPTO_PUNKS':
      return _$nftCollectionTypeEnum_CRYPTO_PUNKS;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftCollectionTypeEnum> _$nftCollectionTypeEnumValues =
    BuiltSet<NftCollectionTypeEnum>(const <NftCollectionTypeEnum>[
  _$nftCollectionTypeEnum_eRC721,
  _$nftCollectionTypeEnum_eRC1155,
  _$nftCollectionTypeEnum_CRYPTO_PUNKS,
]);

const NftCollectionFeaturesEnum _$nftCollectionFeaturesEnum_APPROVE_FOR_ALL =
    const NftCollectionFeaturesEnum._('APPROVE_FOR_ALL');
const NftCollectionFeaturesEnum _$nftCollectionFeaturesEnum_SET_URI_PREFIX =
    const NftCollectionFeaturesEnum._('SET_URI_PREFIX');
const NftCollectionFeaturesEnum _$nftCollectionFeaturesEnum_BURN =
    const NftCollectionFeaturesEnum._('BURN');
const NftCollectionFeaturesEnum _$nftCollectionFeaturesEnum_MINT_WITH_ADDRESS =
    const NftCollectionFeaturesEnum._('MINT_WITH_ADDRESS');
const NftCollectionFeaturesEnum
    _$nftCollectionFeaturesEnum_SECONDARY_SALE_FEES =
    const NftCollectionFeaturesEnum._('SECONDARY_SALE_FEES');
const NftCollectionFeaturesEnum _$nftCollectionFeaturesEnum_MINT_AND_TRANSFER =
    const NftCollectionFeaturesEnum._('MINT_AND_TRANSFER');

NftCollectionFeaturesEnum _$nftCollectionFeaturesEnumValueOf(String name) {
  switch (name) {
    case 'APPROVE_FOR_ALL':
      return _$nftCollectionFeaturesEnum_APPROVE_FOR_ALL;
    case 'SET_URI_PREFIX':
      return _$nftCollectionFeaturesEnum_SET_URI_PREFIX;
    case 'BURN':
      return _$nftCollectionFeaturesEnum_BURN;
    case 'MINT_WITH_ADDRESS':
      return _$nftCollectionFeaturesEnum_MINT_WITH_ADDRESS;
    case 'SECONDARY_SALE_FEES':
      return _$nftCollectionFeaturesEnum_SECONDARY_SALE_FEES;
    case 'MINT_AND_TRANSFER':
      return _$nftCollectionFeaturesEnum_MINT_AND_TRANSFER;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftCollectionFeaturesEnum> _$nftCollectionFeaturesEnumValues =
    BuiltSet<NftCollectionFeaturesEnum>(const <NftCollectionFeaturesEnum>[
  _$nftCollectionFeaturesEnum_APPROVE_FOR_ALL,
  _$nftCollectionFeaturesEnum_SET_URI_PREFIX,
  _$nftCollectionFeaturesEnum_BURN,
  _$nftCollectionFeaturesEnum_MINT_WITH_ADDRESS,
  _$nftCollectionFeaturesEnum_SECONDARY_SALE_FEES,
  _$nftCollectionFeaturesEnum_MINT_AND_TRANSFER,
]);

Serializer<NftCollectionTypeEnum> _$nftCollectionTypeEnumSerializer =
    _$NftCollectionTypeEnumSerializer();
Serializer<NftCollectionFeaturesEnum> _$nftCollectionFeaturesEnumSerializer =
    _$NftCollectionFeaturesEnumSerializer();

class _$NftCollectionTypeEnumSerializer
    implements PrimitiveSerializer<NftCollectionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eRC721': 'ERC721',
    'eRC1155': 'ERC1155',
    'CRYPTO_PUNKS': 'CRYPTO_PUNKS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ERC721': 'eRC721',
    'ERC1155': 'eRC1155',
    'CRYPTO_PUNKS': 'CRYPTO_PUNKS',
  };

  @override
  final Iterable<Type> types = const <Type>[NftCollectionTypeEnum];
  @override
  final String wireName = 'NftCollectionTypeEnum';

  @override
  Object serialize(Serializers serializers, NftCollectionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftCollectionTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftCollectionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftCollectionFeaturesEnumSerializer
    implements PrimitiveSerializer<NftCollectionFeaturesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'APPROVE_FOR_ALL': 'APPROVE_FOR_ALL',
    'SET_URI_PREFIX': 'SET_URI_PREFIX',
    'BURN': 'BURN',
    'MINT_WITH_ADDRESS': 'MINT_WITH_ADDRESS',
    'SECONDARY_SALE_FEES': 'SECONDARY_SALE_FEES',
    'MINT_AND_TRANSFER': 'MINT_AND_TRANSFER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'APPROVE_FOR_ALL': 'APPROVE_FOR_ALL',
    'SET_URI_PREFIX': 'SET_URI_PREFIX',
    'BURN': 'BURN',
    'MINT_WITH_ADDRESS': 'MINT_WITH_ADDRESS',
    'SECONDARY_SALE_FEES': 'SECONDARY_SALE_FEES',
    'MINT_AND_TRANSFER': 'MINT_AND_TRANSFER',
  };

  @override
  final Iterable<Type> types = const <Type>[NftCollectionFeaturesEnum];
  @override
  final String wireName = 'NftCollectionFeaturesEnum';

  @override
  Object serialize(Serializers serializers, NftCollectionFeaturesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftCollectionFeaturesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftCollectionFeaturesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftCollection extends NftCollection {
  @override
  final String id;
  @override
  final NftCollectionTypeEnum type;
  @override
  final String name;
  @override
  final BuiltList<NftCollectionFeaturesEnum> features;
  @override
  final bool supportsLazyMint;
  @override
  final String? owner;
  @override
  final String? symbol;

  factory _$NftCollection([void Function(NftCollectionBuilder)? updates]) =>
      (NftCollectionBuilder()..update(updates))._build();

  _$NftCollection._(
      {required this.id,
      required this.type,
      required this.name,
      required this.features,
      required this.supportsLazyMint,
      this.owner,
      this.symbol})
      : super._();
  @override
  NftCollection rebuild(void Function(NftCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftCollectionBuilder toBuilder() => NftCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftCollection &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        features == other.features &&
        supportsLazyMint == other.supportsLazyMint &&
        owner == other.owner &&
        symbol == other.symbol;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, supportsLazyMint.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftCollection')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('features', features)
          ..add('supportsLazyMint', supportsLazyMint)
          ..add('owner', owner)
          ..add('symbol', symbol))
        .toString();
  }
}

class NftCollectionBuilder
    implements Builder<NftCollection, NftCollectionBuilder> {
  _$NftCollection? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  NftCollectionTypeEnum? _type;
  NftCollectionTypeEnum? get type => _$this._type;
  set type(NftCollectionTypeEnum? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<NftCollectionFeaturesEnum>? _features;
  ListBuilder<NftCollectionFeaturesEnum> get features =>
      _$this._features ??= ListBuilder<NftCollectionFeaturesEnum>();
  set features(ListBuilder<NftCollectionFeaturesEnum>? features) =>
      _$this._features = features;

  bool? _supportsLazyMint;
  bool? get supportsLazyMint => _$this._supportsLazyMint;
  set supportsLazyMint(bool? supportsLazyMint) =>
      _$this._supportsLazyMint = supportsLazyMint;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  NftCollectionBuilder() {
    NftCollection._defaults(this);
  }

  NftCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _name = $v.name;
      _features = $v.features.toBuilder();
      _supportsLazyMint = $v.supportsLazyMint;
      _owner = $v.owner;
      _symbol = $v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftCollection other) {
    _$v = other as _$NftCollection;
  }

  @override
  void update(void Function(NftCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftCollection build() => _build();

  _$NftCollection _build() {
    _$NftCollection _$result;
    try {
      _$result = _$v ??
          _$NftCollection._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NftCollection', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'NftCollection', 'type'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'NftCollection', 'name'),
            features: features.build(),
            supportsLazyMint: BuiltValueNullFieldError.checkNotNull(
                supportsLazyMint, r'NftCollection', 'supportsLazyMint'),
            owner: owner,
            symbol: symbol,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
