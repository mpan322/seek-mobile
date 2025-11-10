// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftItemFilterSortEnum _$nftItemFilterSortEnum_LAST_UPDATE =
    const NftItemFilterSortEnum._('LAST_UPDATE');

NftItemFilterSortEnum _$nftItemFilterSortEnumValueOf(String name) {
  switch (name) {
    case 'LAST_UPDATE':
      return _$nftItemFilterSortEnum_LAST_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftItemFilterSortEnum> _$nftItemFilterSortEnumValues =
    BuiltSet<NftItemFilterSortEnum>(const <NftItemFilterSortEnum>[
  _$nftItemFilterSortEnum_LAST_UPDATE,
]);

const NftItemFilterAtTypeEnum _$nftItemFilterAtTypeEnum_byCollection =
    const NftItemFilterAtTypeEnum._('byCollection');

NftItemFilterAtTypeEnum _$nftItemFilterAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'byCollection':
      return _$nftItemFilterAtTypeEnum_byCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftItemFilterAtTypeEnum> _$nftItemFilterAtTypeEnumValues =
    BuiltSet<NftItemFilterAtTypeEnum>(const <NftItemFilterAtTypeEnum>[
  _$nftItemFilterAtTypeEnum_byCollection,
]);

Serializer<NftItemFilterSortEnum> _$nftItemFilterSortEnumSerializer =
    _$NftItemFilterSortEnumSerializer();
Serializer<NftItemFilterAtTypeEnum> _$nftItemFilterAtTypeEnumSerializer =
    _$NftItemFilterAtTypeEnumSerializer();

class _$NftItemFilterSortEnumSerializer
    implements PrimitiveSerializer<NftItemFilterSortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LAST_UPDATE': 'LAST_UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LAST_UPDATE': 'LAST_UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftItemFilterSortEnum];
  @override
  final String wireName = 'NftItemFilterSortEnum';

  @override
  Object serialize(Serializers serializers, NftItemFilterSortEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftItemFilterSortEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftItemFilterSortEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftItemFilterAtTypeEnumSerializer
    implements PrimitiveSerializer<NftItemFilterAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCollection': 'by_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_collection': 'byCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[NftItemFilterAtTypeEnum];
  @override
  final String wireName = 'NftItemFilterAtTypeEnum';

  @override
  Object serialize(Serializers serializers, NftItemFilterAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftItemFilterAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftItemFilterAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftItemFilter extends NftItemFilter {
  @override
  final NftItemFilterSortEnum sort;
  @override
  final OneOf oneOf;

  factory _$NftItemFilter([void Function(NftItemFilterBuilder)? updates]) =>
      (NftItemFilterBuilder()..update(updates))._build();

  _$NftItemFilter._({required this.sort, required this.oneOf}) : super._();
  @override
  NftItemFilter rebuild(void Function(NftItemFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemFilterBuilder toBuilder() => NftItemFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemFilter && sort == other.sort && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftItemFilter')
          ..add('sort', sort)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftItemFilterBuilder
    implements Builder<NftItemFilter, NftItemFilterBuilder> {
  _$NftItemFilter? _$v;

  NftItemFilterSortEnum? _sort;
  NftItemFilterSortEnum? get sort => _$this._sort;
  set sort(NftItemFilterSortEnum? sort) => _$this._sort = sort;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftItemFilterBuilder() {
    NftItemFilter._defaults(this);
  }

  NftItemFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sort = $v.sort;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItemFilter other) {
    _$v = other as _$NftItemFilter;
  }

  @override
  void update(void Function(NftItemFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemFilter build() => _build();

  _$NftItemFilter _build() {
    final _$result = _$v ??
        _$NftItemFilter._(
          sort: BuiltValueNullFieldError.checkNotNull(
              sort, r'NftItemFilter', 'sort'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftItemFilter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
