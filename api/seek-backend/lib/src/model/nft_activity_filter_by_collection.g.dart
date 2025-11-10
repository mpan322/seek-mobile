// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_activity_filter_by_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftActivityFilterByCollectionAtTypeEnum
    _$nftActivityFilterByCollectionAtTypeEnum_byCollection =
    const NftActivityFilterByCollectionAtTypeEnum._('byCollection');

NftActivityFilterByCollectionAtTypeEnum
    _$nftActivityFilterByCollectionAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'byCollection':
      return _$nftActivityFilterByCollectionAtTypeEnum_byCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftActivityFilterByCollectionAtTypeEnum>
    _$nftActivityFilterByCollectionAtTypeEnumValues = BuiltSet<
        NftActivityFilterByCollectionAtTypeEnum>(const <NftActivityFilterByCollectionAtTypeEnum>[
  _$nftActivityFilterByCollectionAtTypeEnum_byCollection,
]);

Serializer<NftActivityFilterByCollectionAtTypeEnum>
    _$nftActivityFilterByCollectionAtTypeEnumSerializer =
    _$NftActivityFilterByCollectionAtTypeEnumSerializer();

class _$NftActivityFilterByCollectionAtTypeEnumSerializer
    implements PrimitiveSerializer<NftActivityFilterByCollectionAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCollection': 'by_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_collection': 'byCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NftActivityFilterByCollectionAtTypeEnum
  ];
  @override
  final String wireName = 'NftActivityFilterByCollectionAtTypeEnum';

  @override
  Object serialize(Serializers serializers,
          NftActivityFilterByCollectionAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftActivityFilterByCollectionAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftActivityFilterByCollectionAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftActivityFilterByCollection extends NftActivityFilterByCollection {
  @override
  final NftActivityFilterByCollectionAtTypeEnum atType;
  @override
  final String contract;
  @override
  final BuiltList<NftActivityFilterTypes> types;

  factory _$NftActivityFilterByCollection(
          [void Function(NftActivityFilterByCollectionBuilder)? updates]) =>
      (NftActivityFilterByCollectionBuilder()..update(updates))._build();

  _$NftActivityFilterByCollection._(
      {required this.atType, required this.contract, required this.types})
      : super._();
  @override
  NftActivityFilterByCollection rebuild(
          void Function(NftActivityFilterByCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftActivityFilterByCollectionBuilder toBuilder() =>
      NftActivityFilterByCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftActivityFilterByCollection &&
        atType == other.atType &&
        contract == other.contract &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftActivityFilterByCollection')
          ..add('atType', atType)
          ..add('contract', contract)
          ..add('types', types))
        .toString();
  }
}

class NftActivityFilterByCollectionBuilder
    implements
        Builder<NftActivityFilterByCollection,
            NftActivityFilterByCollectionBuilder> {
  _$NftActivityFilterByCollection? _$v;

  NftActivityFilterByCollectionAtTypeEnum? _atType;
  NftActivityFilterByCollectionAtTypeEnum? get atType => _$this._atType;
  set atType(NftActivityFilterByCollectionAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  ListBuilder<NftActivityFilterTypes>? _types;
  ListBuilder<NftActivityFilterTypes> get types =>
      _$this._types ??= ListBuilder<NftActivityFilterTypes>();
  set types(ListBuilder<NftActivityFilterTypes>? types) =>
      _$this._types = types;

  NftActivityFilterByCollectionBuilder() {
    NftActivityFilterByCollection._defaults(this);
  }

  NftActivityFilterByCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _contract = $v.contract;
      _types = $v.types.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftActivityFilterByCollection other) {
    _$v = other as _$NftActivityFilterByCollection;
  }

  @override
  void update(void Function(NftActivityFilterByCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftActivityFilterByCollection build() => _build();

  _$NftActivityFilterByCollection _build() {
    _$NftActivityFilterByCollection _$result;
    try {
      _$result = _$v ??
          _$NftActivityFilterByCollection._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'NftActivityFilterByCollection', 'atType'),
            contract: BuiltValueNullFieldError.checkNotNull(
                contract, r'NftActivityFilterByCollection', 'contract'),
            types: types.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftActivityFilterByCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
