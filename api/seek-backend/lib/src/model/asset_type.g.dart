// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssetTypeAssetClassEnum _$assetTypeAssetClassEnum_GEN_ART =
    const AssetTypeAssetClassEnum._('GEN_ART');

AssetTypeAssetClassEnum _$assetTypeAssetClassEnumValueOf(String name) {
  switch (name) {
    case 'GEN_ART':
      return _$assetTypeAssetClassEnum_GEN_ART;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AssetTypeAssetClassEnum> _$assetTypeAssetClassEnumValues =
    BuiltSet<AssetTypeAssetClassEnum>(const <AssetTypeAssetClassEnum>[
  _$assetTypeAssetClassEnum_GEN_ART,
]);

Serializer<AssetTypeAssetClassEnum> _$assetTypeAssetClassEnumSerializer =
    _$AssetTypeAssetClassEnumSerializer();

class _$AssetTypeAssetClassEnumSerializer
    implements PrimitiveSerializer<AssetTypeAssetClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GEN_ART': 'GEN_ART',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GEN_ART': 'GEN_ART',
  };

  @override
  final Iterable<Type> types = const <Type>[AssetTypeAssetClassEnum];
  @override
  final String wireName = 'AssetTypeAssetClassEnum';

  @override
  Object serialize(Serializers serializers, AssetTypeAssetClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AssetTypeAssetClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssetTypeAssetClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AssetType extends AssetType {
  @override
  final OneOf oneOf;

  factory _$AssetType([void Function(AssetTypeBuilder)? updates]) =>
      (AssetTypeBuilder()..update(updates))._build();

  _$AssetType._({required this.oneOf}) : super._();
  @override
  AssetType rebuild(void Function(AssetTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetTypeBuilder toBuilder() => AssetTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetType && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'AssetType')..add('oneOf', oneOf))
        .toString();
  }
}

class AssetTypeBuilder implements Builder<AssetType, AssetTypeBuilder> {
  _$AssetType? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  AssetTypeBuilder() {
    AssetType._defaults(this);
  }

  AssetTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetType other) {
    _$v = other as _$AssetType;
  }

  @override
  void update(void Function(AssetTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetType build() => _build();

  _$AssetType _build() {
    final _$result = _$v ??
        _$AssetType._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'AssetType', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
