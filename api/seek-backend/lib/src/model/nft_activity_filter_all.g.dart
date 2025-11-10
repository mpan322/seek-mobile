// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_activity_filter_all.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftActivityFilterAllAtTypeEnum _$nftActivityFilterAllAtTypeEnum_all =
    const NftActivityFilterAllAtTypeEnum._('all');

NftActivityFilterAllAtTypeEnum _$nftActivityFilterAllAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'all':
      return _$nftActivityFilterAllAtTypeEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftActivityFilterAllAtTypeEnum>
    _$nftActivityFilterAllAtTypeEnumValues = BuiltSet<
        NftActivityFilterAllAtTypeEnum>(const <NftActivityFilterAllAtTypeEnum>[
  _$nftActivityFilterAllAtTypeEnum_all,
]);

Serializer<NftActivityFilterAllAtTypeEnum>
    _$nftActivityFilterAllAtTypeEnumSerializer =
    _$NftActivityFilterAllAtTypeEnumSerializer();

class _$NftActivityFilterAllAtTypeEnumSerializer
    implements PrimitiveSerializer<NftActivityFilterAllAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[NftActivityFilterAllAtTypeEnum];
  @override
  final String wireName = 'NftActivityFilterAllAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftActivityFilterAllAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftActivityFilterAllAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftActivityFilterAllAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftActivityFilterAll extends NftActivityFilterAll {
  @override
  final NftActivityFilterAllAtTypeEnum atType;
  @override
  final BuiltList<NftActivityFilterTypes> types;

  factory _$NftActivityFilterAll(
          [void Function(NftActivityFilterAllBuilder)? updates]) =>
      (NftActivityFilterAllBuilder()..update(updates))._build();

  _$NftActivityFilterAll._({required this.atType, required this.types})
      : super._();
  @override
  NftActivityFilterAll rebuild(
          void Function(NftActivityFilterAllBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftActivityFilterAllBuilder toBuilder() =>
      NftActivityFilterAllBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftActivityFilterAll &&
        atType == other.atType &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftActivityFilterAll')
          ..add('atType', atType)
          ..add('types', types))
        .toString();
  }
}

class NftActivityFilterAllBuilder
    implements Builder<NftActivityFilterAll, NftActivityFilterAllBuilder> {
  _$NftActivityFilterAll? _$v;

  NftActivityFilterAllAtTypeEnum? _atType;
  NftActivityFilterAllAtTypeEnum? get atType => _$this._atType;
  set atType(NftActivityFilterAllAtTypeEnum? atType) => _$this._atType = atType;

  ListBuilder<NftActivityFilterTypes>? _types;
  ListBuilder<NftActivityFilterTypes> get types =>
      _$this._types ??= ListBuilder<NftActivityFilterTypes>();
  set types(ListBuilder<NftActivityFilterTypes>? types) =>
      _$this._types = types;

  NftActivityFilterAllBuilder() {
    NftActivityFilterAll._defaults(this);
  }

  NftActivityFilterAllBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _types = $v.types.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftActivityFilterAll other) {
    _$v = other as _$NftActivityFilterAll;
  }

  @override
  void update(void Function(NftActivityFilterAllBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftActivityFilterAll build() => _build();

  _$NftActivityFilterAll _build() {
    _$NftActivityFilterAll _$result;
    try {
      _$result = _$v ??
          _$NftActivityFilterAll._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'NftActivityFilterAll', 'atType'),
            types: types.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftActivityFilterAll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
