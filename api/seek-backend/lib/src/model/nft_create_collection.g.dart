// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_create_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftCreateCollectionTypeEnum
    _$nftCreateCollectionTypeEnum_COLLECTION_CREATE =
    const NftCreateCollectionTypeEnum._('COLLECTION_CREATE');

NftCreateCollectionTypeEnum _$nftCreateCollectionTypeEnumValueOf(String name) {
  switch (name) {
    case 'COLLECTION_CREATE':
      return _$nftCreateCollectionTypeEnum_COLLECTION_CREATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftCreateCollectionTypeEnum>
    _$nftCreateCollectionTypeEnumValues =
    BuiltSet<NftCreateCollectionTypeEnum>(const <NftCreateCollectionTypeEnum>[
  _$nftCreateCollectionTypeEnum_COLLECTION_CREATE,
]);

Serializer<NftCreateCollectionTypeEnum>
    _$nftCreateCollectionTypeEnumSerializer =
    _$NftCreateCollectionTypeEnumSerializer();

class _$NftCreateCollectionTypeEnumSerializer
    implements PrimitiveSerializer<NftCreateCollectionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COLLECTION_CREATE': 'COLLECTION_CREATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COLLECTION_CREATE': 'COLLECTION_CREATE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftCreateCollectionTypeEnum];
  @override
  final String wireName = 'NftCreateCollectionTypeEnum';

  @override
  Object serialize(Serializers serializers, NftCreateCollectionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftCreateCollectionTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftCreateCollectionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftCreateCollection extends NftCreateCollection {
  @override
  final String owner;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final NftCreateCollectionTypeEnum? type;

  factory _$NftCreateCollection(
          [void Function(NftCreateCollectionBuilder)? updates]) =>
      (NftCreateCollectionBuilder()..update(updates))._build();

  _$NftCreateCollection._(
      {required this.owner,
      required this.name,
      required this.symbol,
      this.type})
      : super._();
  @override
  NftCreateCollection rebuild(
          void Function(NftCreateCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftCreateCollectionBuilder toBuilder() =>
      NftCreateCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftCreateCollection &&
        owner == other.owner &&
        name == other.name &&
        symbol == other.symbol &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftCreateCollection')
          ..add('owner', owner)
          ..add('name', name)
          ..add('symbol', symbol)
          ..add('type', type))
        .toString();
  }
}

class NftCreateCollectionBuilder
    implements Builder<NftCreateCollection, NftCreateCollectionBuilder> {
  _$NftCreateCollection? _$v;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  NftCreateCollectionTypeEnum? _type;
  NftCreateCollectionTypeEnum? get type => _$this._type;
  set type(NftCreateCollectionTypeEnum? type) => _$this._type = type;

  NftCreateCollectionBuilder() {
    NftCreateCollection._defaults(this);
  }

  NftCreateCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _name = $v.name;
      _symbol = $v.symbol;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftCreateCollection other) {
    _$v = other as _$NftCreateCollection;
  }

  @override
  void update(void Function(NftCreateCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftCreateCollection build() => _build();

  _$NftCreateCollection _build() {
    final _$result = _$v ??
        _$NftCreateCollection._(
          owner: BuiltValueNullFieldError.checkNotNull(
              owner, r'NftCreateCollection', 'owner'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'NftCreateCollection', 'name'),
          symbol: BuiltValueNullFieldError.checkNotNull(
              symbol, r'NftCreateCollection', 'symbol'),
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
