// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eth_asset_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EthAssetTypeAssetClassEnum _$ethAssetTypeAssetClassEnum_ETH =
    const EthAssetTypeAssetClassEnum._('ETH');

EthAssetTypeAssetClassEnum _$ethAssetTypeAssetClassEnumValueOf(String name) {
  switch (name) {
    case 'ETH':
      return _$ethAssetTypeAssetClassEnum_ETH;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EthAssetTypeAssetClassEnum> _$ethAssetTypeAssetClassEnumValues =
    BuiltSet<EthAssetTypeAssetClassEnum>(const <EthAssetTypeAssetClassEnum>[
  _$ethAssetTypeAssetClassEnum_ETH,
]);

Serializer<EthAssetTypeAssetClassEnum> _$ethAssetTypeAssetClassEnumSerializer =
    _$EthAssetTypeAssetClassEnumSerializer();

class _$EthAssetTypeAssetClassEnumSerializer
    implements PrimitiveSerializer<EthAssetTypeAssetClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ETH': 'ETH',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ETH': 'ETH',
  };

  @override
  final Iterable<Type> types = const <Type>[EthAssetTypeAssetClassEnum];
  @override
  final String wireName = 'EthAssetTypeAssetClassEnum';

  @override
  Object serialize(Serializers serializers, EthAssetTypeAssetClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EthAssetTypeAssetClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EthAssetTypeAssetClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EthAssetType extends EthAssetType {
  @override
  final EthAssetTypeAssetClassEnum assetClass;

  factory _$EthAssetType([void Function(EthAssetTypeBuilder)? updates]) =>
      (EthAssetTypeBuilder()..update(updates))._build();

  _$EthAssetType._({required this.assetClass}) : super._();
  @override
  EthAssetType rebuild(void Function(EthAssetTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EthAssetTypeBuilder toBuilder() => EthAssetTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EthAssetType && assetClass == other.assetClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EthAssetType')
          ..add('assetClass', assetClass))
        .toString();
  }
}

class EthAssetTypeBuilder
    implements Builder<EthAssetType, EthAssetTypeBuilder> {
  _$EthAssetType? _$v;

  EthAssetTypeAssetClassEnum? _assetClass;
  EthAssetTypeAssetClassEnum? get assetClass => _$this._assetClass;
  set assetClass(EthAssetTypeAssetClassEnum? assetClass) =>
      _$this._assetClass = assetClass;

  EthAssetTypeBuilder() {
    EthAssetType._defaults(this);
  }

  EthAssetTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetClass = $v.assetClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EthAssetType other) {
    _$v = other as _$EthAssetType;
  }

  @override
  void update(void Function(EthAssetTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EthAssetType build() => _build();

  _$EthAssetType _build() {
    final _$result = _$v ??
        _$EthAssetType._(
          assetClass: BuiltValueNullFieldError.checkNotNull(
              assetClass, r'EthAssetType', 'assetClass'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
