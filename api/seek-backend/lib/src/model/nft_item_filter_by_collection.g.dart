// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_filter_by_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftItemFilterByCollectionAtTypeEnum
    _$nftItemFilterByCollectionAtTypeEnum_byCollection =
    const NftItemFilterByCollectionAtTypeEnum._('byCollection');

NftItemFilterByCollectionAtTypeEnum
    _$nftItemFilterByCollectionAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'byCollection':
      return _$nftItemFilterByCollectionAtTypeEnum_byCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftItemFilterByCollectionAtTypeEnum>
    _$nftItemFilterByCollectionAtTypeEnumValues = BuiltSet<
        NftItemFilterByCollectionAtTypeEnum>(const <NftItemFilterByCollectionAtTypeEnum>[
  _$nftItemFilterByCollectionAtTypeEnum_byCollection,
]);

Serializer<NftItemFilterByCollectionAtTypeEnum>
    _$nftItemFilterByCollectionAtTypeEnumSerializer =
    _$NftItemFilterByCollectionAtTypeEnumSerializer();

class _$NftItemFilterByCollectionAtTypeEnumSerializer
    implements PrimitiveSerializer<NftItemFilterByCollectionAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCollection': 'by_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_collection': 'byCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NftItemFilterByCollectionAtTypeEnum
  ];
  @override
  final String wireName = 'NftItemFilterByCollectionAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftItemFilterByCollectionAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftItemFilterByCollectionAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftItemFilterByCollectionAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftItemFilterByCollection extends NftItemFilterByCollection {
  @override
  final NftItemFilterByCollectionAtTypeEnum atType;
  @override
  final String collection;

  factory _$NftItemFilterByCollection(
          [void Function(NftItemFilterByCollectionBuilder)? updates]) =>
      (NftItemFilterByCollectionBuilder()..update(updates))._build();

  _$NftItemFilterByCollection._(
      {required this.atType, required this.collection})
      : super._();
  @override
  NftItemFilterByCollection rebuild(
          void Function(NftItemFilterByCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemFilterByCollectionBuilder toBuilder() =>
      NftItemFilterByCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemFilterByCollection &&
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
    return (newBuiltValueToStringHelper(r'NftItemFilterByCollection')
          ..add('atType', atType)
          ..add('collection', collection))
        .toString();
  }
}

class NftItemFilterByCollectionBuilder
    implements
        Builder<NftItemFilterByCollection, NftItemFilterByCollectionBuilder> {
  _$NftItemFilterByCollection? _$v;

  NftItemFilterByCollectionAtTypeEnum? _atType;
  NftItemFilterByCollectionAtTypeEnum? get atType => _$this._atType;
  set atType(NftItemFilterByCollectionAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _collection;
  String? get collection => _$this._collection;
  set collection(String? collection) => _$this._collection = collection;

  NftItemFilterByCollectionBuilder() {
    NftItemFilterByCollection._defaults(this);
  }

  NftItemFilterByCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _collection = $v.collection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItemFilterByCollection other) {
    _$v = other as _$NftItemFilterByCollection;
  }

  @override
  void update(void Function(NftItemFilterByCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemFilterByCollection build() => _build();

  _$NftItemFilterByCollection _build() {
    final _$result = _$v ??
        _$NftItemFilterByCollection._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'NftItemFilterByCollection', 'atType'),
          collection: BuiltValueNullFieldError.checkNotNull(
              collection, r'NftItemFilterByCollection', 'collection'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
