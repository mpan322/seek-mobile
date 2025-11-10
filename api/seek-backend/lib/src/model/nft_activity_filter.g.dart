// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_activity_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftActivityFilterAtTypeEnum _$nftActivityFilterAtTypeEnum_byCollection =
    const NftActivityFilterAtTypeEnum._('byCollection');

NftActivityFilterAtTypeEnum _$nftActivityFilterAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'byCollection':
      return _$nftActivityFilterAtTypeEnum_byCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftActivityFilterAtTypeEnum>
    _$nftActivityFilterAtTypeEnumValues =
    BuiltSet<NftActivityFilterAtTypeEnum>(const <NftActivityFilterAtTypeEnum>[
  _$nftActivityFilterAtTypeEnum_byCollection,
]);

Serializer<NftActivityFilterAtTypeEnum>
    _$nftActivityFilterAtTypeEnumSerializer =
    _$NftActivityFilterAtTypeEnumSerializer();

class _$NftActivityFilterAtTypeEnumSerializer
    implements PrimitiveSerializer<NftActivityFilterAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCollection': 'by_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_collection': 'byCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[NftActivityFilterAtTypeEnum];
  @override
  final String wireName = 'NftActivityFilterAtTypeEnum';

  @override
  Object serialize(Serializers serializers, NftActivityFilterAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftActivityFilterAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftActivityFilterAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftActivityFilter extends NftActivityFilter {
  @override
  final OneOf oneOf;

  factory _$NftActivityFilter(
          [void Function(NftActivityFilterBuilder)? updates]) =>
      (NftActivityFilterBuilder()..update(updates))._build();

  _$NftActivityFilter._({required this.oneOf}) : super._();
  @override
  NftActivityFilter rebuild(void Function(NftActivityFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftActivityFilterBuilder toBuilder() =>
      NftActivityFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftActivityFilter && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftActivityFilter')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftActivityFilterBuilder
    implements Builder<NftActivityFilter, NftActivityFilterBuilder> {
  _$NftActivityFilter? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftActivityFilterBuilder() {
    NftActivityFilter._defaults(this);
  }

  NftActivityFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftActivityFilter other) {
    _$v = other as _$NftActivityFilter;
  }

  @override
  void update(void Function(NftActivityFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftActivityFilter build() => _build();

  _$NftActivityFilter _build() {
    final _$result = _$v ??
        _$NftActivityFilter._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftActivityFilter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
