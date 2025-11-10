// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownership_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOwnershipFilterSortEnum _$nftOwnershipFilterSortEnum_LAST_UPDATE =
    const NftOwnershipFilterSortEnum._('LAST_UPDATE');

NftOwnershipFilterSortEnum _$nftOwnershipFilterSortEnumValueOf(String name) {
  switch (name) {
    case 'LAST_UPDATE':
      return _$nftOwnershipFilterSortEnum_LAST_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipFilterSortEnum> _$nftOwnershipFilterSortEnumValues =
    BuiltSet<NftOwnershipFilterSortEnum>(const <NftOwnershipFilterSortEnum>[
  _$nftOwnershipFilterSortEnum_LAST_UPDATE,
]);

const NftOwnershipFilterAtTypeEnum _$nftOwnershipFilterAtTypeEnum_byItem =
    const NftOwnershipFilterAtTypeEnum._('byItem');

NftOwnershipFilterAtTypeEnum _$nftOwnershipFilterAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'byItem':
      return _$nftOwnershipFilterAtTypeEnum_byItem;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipFilterAtTypeEnum>
    _$nftOwnershipFilterAtTypeEnumValues =
    BuiltSet<NftOwnershipFilterAtTypeEnum>(const <NftOwnershipFilterAtTypeEnum>[
  _$nftOwnershipFilterAtTypeEnum_byItem,
]);

Serializer<NftOwnershipFilterSortEnum> _$nftOwnershipFilterSortEnumSerializer =
    _$NftOwnershipFilterSortEnumSerializer();
Serializer<NftOwnershipFilterAtTypeEnum>
    _$nftOwnershipFilterAtTypeEnumSerializer =
    _$NftOwnershipFilterAtTypeEnumSerializer();

class _$NftOwnershipFilterSortEnumSerializer
    implements PrimitiveSerializer<NftOwnershipFilterSortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LAST_UPDATE': 'LAST_UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LAST_UPDATE': 'LAST_UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOwnershipFilterSortEnum];
  @override
  final String wireName = 'NftOwnershipFilterSortEnum';

  @override
  Object serialize(Serializers serializers, NftOwnershipFilterSortEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipFilterSortEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipFilterSortEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipFilterAtTypeEnumSerializer
    implements PrimitiveSerializer<NftOwnershipFilterAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byItem': 'by_item',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_item': 'byItem',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOwnershipFilterAtTypeEnum];
  @override
  final String wireName = 'NftOwnershipFilterAtTypeEnum';

  @override
  Object serialize(Serializers serializers, NftOwnershipFilterAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipFilterAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipFilterAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipFilter extends NftOwnershipFilter {
  @override
  final NftOwnershipFilterSortEnum sort;
  @override
  final OneOf oneOf;

  factory _$NftOwnershipFilter(
          [void Function(NftOwnershipFilterBuilder)? updates]) =>
      (NftOwnershipFilterBuilder()..update(updates))._build();

  _$NftOwnershipFilter._({required this.sort, required this.oneOf}) : super._();
  @override
  NftOwnershipFilter rebuild(
          void Function(NftOwnershipFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipFilterBuilder toBuilder() =>
      NftOwnershipFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnershipFilter &&
        sort == other.sort &&
        oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'NftOwnershipFilter')
          ..add('sort', sort)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftOwnershipFilterBuilder
    implements Builder<NftOwnershipFilter, NftOwnershipFilterBuilder> {
  _$NftOwnershipFilter? _$v;

  NftOwnershipFilterSortEnum? _sort;
  NftOwnershipFilterSortEnum? get sort => _$this._sort;
  set sort(NftOwnershipFilterSortEnum? sort) => _$this._sort = sort;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftOwnershipFilterBuilder() {
    NftOwnershipFilter._defaults(this);
  }

  NftOwnershipFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sort = $v.sort;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOwnershipFilter other) {
    _$v = other as _$NftOwnershipFilter;
  }

  @override
  void update(void Function(NftOwnershipFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnershipFilter build() => _build();

  _$NftOwnershipFilter _build() {
    final _$result = _$v ??
        _$NftOwnershipFilter._(
          sort: BuiltValueNullFieldError.checkNotNull(
              sort, r'NftOwnershipFilter', 'sort'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftOwnershipFilter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
