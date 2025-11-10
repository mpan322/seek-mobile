// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownership_filter_by_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOwnershipFilterByCollectionAtTypeEnum
    _$nftOwnershipFilterByCollectionAtTypeEnum_byCollection =
    const NftOwnershipFilterByCollectionAtTypeEnum._('byCollection');

NftOwnershipFilterByCollectionAtTypeEnum
    _$nftOwnershipFilterByCollectionAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'byCollection':
      return _$nftOwnershipFilterByCollectionAtTypeEnum_byCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipFilterByCollectionAtTypeEnum>
    _$nftOwnershipFilterByCollectionAtTypeEnumValues = BuiltSet<
        NftOwnershipFilterByCollectionAtTypeEnum>(const <NftOwnershipFilterByCollectionAtTypeEnum>[
  _$nftOwnershipFilterByCollectionAtTypeEnum_byCollection,
]);

Serializer<NftOwnershipFilterByCollectionAtTypeEnum>
    _$nftOwnershipFilterByCollectionAtTypeEnumSerializer =
    _$NftOwnershipFilterByCollectionAtTypeEnumSerializer();

class _$NftOwnershipFilterByCollectionAtTypeEnumSerializer
    implements PrimitiveSerializer<NftOwnershipFilterByCollectionAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCollection': 'by_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_collection': 'byCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NftOwnershipFilterByCollectionAtTypeEnum
  ];
  @override
  final String wireName = 'NftOwnershipFilterByCollectionAtTypeEnum';

  @override
  Object serialize(Serializers serializers,
          NftOwnershipFilterByCollectionAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipFilterByCollectionAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipFilterByCollectionAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipFilterByCollection extends NftOwnershipFilterByCollection {
  @override
  final NftOwnershipFilterByCollectionAtTypeEnum atType;
  @override
  final String collection;

  factory _$NftOwnershipFilterByCollection(
          [void Function(NftOwnershipFilterByCollectionBuilder)? updates]) =>
      (NftOwnershipFilterByCollectionBuilder()..update(updates))._build();

  _$NftOwnershipFilterByCollection._(
      {required this.atType, required this.collection})
      : super._();
  @override
  NftOwnershipFilterByCollection rebuild(
          void Function(NftOwnershipFilterByCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipFilterByCollectionBuilder toBuilder() =>
      NftOwnershipFilterByCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnershipFilterByCollection &&
        atType == other.atType &&
        collection == other.collection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, collection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOwnershipFilterByCollection')
          ..add('atType', atType)
          ..add('collection', collection))
        .toString();
  }
}

class NftOwnershipFilterByCollectionBuilder
    implements
        Builder<NftOwnershipFilterByCollection,
            NftOwnershipFilterByCollectionBuilder> {
  _$NftOwnershipFilterByCollection? _$v;

  NftOwnershipFilterByCollectionAtTypeEnum? _atType;
  NftOwnershipFilterByCollectionAtTypeEnum? get atType => _$this._atType;
  set atType(NftOwnershipFilterByCollectionAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _collection;
  String? get collection => _$this._collection;
  set collection(String? collection) => _$this._collection = collection;

  NftOwnershipFilterByCollectionBuilder() {
    NftOwnershipFilterByCollection._defaults(this);
  }

  NftOwnershipFilterByCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _collection = $v.collection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOwnershipFilterByCollection other) {
    _$v = other as _$NftOwnershipFilterByCollection;
  }

  @override
  void update(void Function(NftOwnershipFilterByCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnershipFilterByCollection build() => _build();

  _$NftOwnershipFilterByCollection _build() {
    final _$result = _$v ??
        _$NftOwnershipFilterByCollection._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'NftOwnershipFilterByCollection', 'atType'),
          collection: BuiltValueNullFieldError.checkNotNull(
              collection, r'NftOwnershipFilterByCollection', 'collection'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
