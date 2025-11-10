// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc1155_asset_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Erc1155AssetTypeAssetClassEnum _$erc1155AssetTypeAssetClassEnum_eRC1155 =
    const Erc1155AssetTypeAssetClassEnum._('eRC1155');

Erc1155AssetTypeAssetClassEnum _$erc1155AssetTypeAssetClassEnumValueOf(
    String name) {
  switch (name) {
    case 'eRC1155':
      return _$erc1155AssetTypeAssetClassEnum_eRC1155;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Erc1155AssetTypeAssetClassEnum>
    _$erc1155AssetTypeAssetClassEnumValues = BuiltSet<
        Erc1155AssetTypeAssetClassEnum>(const <Erc1155AssetTypeAssetClassEnum>[
  _$erc1155AssetTypeAssetClassEnum_eRC1155,
]);

Serializer<Erc1155AssetTypeAssetClassEnum>
    _$erc1155AssetTypeAssetClassEnumSerializer =
    _$Erc1155AssetTypeAssetClassEnumSerializer();

class _$Erc1155AssetTypeAssetClassEnumSerializer
    implements PrimitiveSerializer<Erc1155AssetTypeAssetClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eRC1155': 'ERC1155',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ERC1155': 'eRC1155',
  };

  @override
  final Iterable<Type> types = const <Type>[Erc1155AssetTypeAssetClassEnum];
  @override
  final String wireName = 'Erc1155AssetTypeAssetClassEnum';

  @override
  Object serialize(
          Serializers serializers, Erc1155AssetTypeAssetClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Erc1155AssetTypeAssetClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Erc1155AssetTypeAssetClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Erc1155AssetType extends Erc1155AssetType {
  @override
  final Erc1155AssetTypeAssetClassEnum assetClass;
  @override
  final String contract;
  @override
  final String tokenId;

  factory _$Erc1155AssetType(
          [void Function(Erc1155AssetTypeBuilder)? updates]) =>
      (Erc1155AssetTypeBuilder()..update(updates))._build();

  _$Erc1155AssetType._(
      {required this.assetClass, required this.contract, required this.tokenId})
      : super._();
  @override
  Erc1155AssetType rebuild(void Function(Erc1155AssetTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc1155AssetTypeBuilder toBuilder() =>
      Erc1155AssetTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc1155AssetType &&
        assetClass == other.assetClass &&
        contract == other.contract &&
        tokenId == other.tokenId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Erc1155AssetType')
          ..add('assetClass', assetClass)
          ..add('contract', contract)
          ..add('tokenId', tokenId))
        .toString();
  }
}

class Erc1155AssetTypeBuilder
    implements Builder<Erc1155AssetType, Erc1155AssetTypeBuilder> {
  _$Erc1155AssetType? _$v;

  Erc1155AssetTypeAssetClassEnum? _assetClass;
  Erc1155AssetTypeAssetClassEnum? get assetClass => _$this._assetClass;
  set assetClass(Erc1155AssetTypeAssetClassEnum? assetClass) =>
      _$this._assetClass = assetClass;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  Erc1155AssetTypeBuilder() {
    Erc1155AssetType._defaults(this);
  }

  Erc1155AssetTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetClass = $v.assetClass;
      _contract = $v.contract;
      _tokenId = $v.tokenId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Erc1155AssetType other) {
    _$v = other as _$Erc1155AssetType;
  }

  @override
  void update(void Function(Erc1155AssetTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc1155AssetType build() => _build();

  _$Erc1155AssetType _build() {
    final _$result = _$v ??
        _$Erc1155AssetType._(
          assetClass: BuiltValueNullFieldError.checkNotNull(
              assetClass, r'Erc1155AssetType', 'assetClass'),
          contract: BuiltValueNullFieldError.checkNotNull(
              contract, r'Erc1155AssetType', 'contract'),
          tokenId: BuiltValueNullFieldError.checkNotNull(
              tokenId, r'Erc1155AssetType', 'tokenId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
