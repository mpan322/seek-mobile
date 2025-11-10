// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc1155_lazy_asset_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Erc1155LazyAssetTypeAssetClassEnum
    _$erc1155LazyAssetTypeAssetClassEnum_eRC1155LAZY =
    const Erc1155LazyAssetTypeAssetClassEnum._('eRC1155LAZY');

Erc1155LazyAssetTypeAssetClassEnum _$erc1155LazyAssetTypeAssetClassEnumValueOf(
    String name) {
  switch (name) {
    case 'eRC1155LAZY':
      return _$erc1155LazyAssetTypeAssetClassEnum_eRC1155LAZY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Erc1155LazyAssetTypeAssetClassEnum>
    _$erc1155LazyAssetTypeAssetClassEnumValues = BuiltSet<
        Erc1155LazyAssetTypeAssetClassEnum>(const <Erc1155LazyAssetTypeAssetClassEnum>[
  _$erc1155LazyAssetTypeAssetClassEnum_eRC1155LAZY,
]);

Serializer<Erc1155LazyAssetTypeAssetClassEnum>
    _$erc1155LazyAssetTypeAssetClassEnumSerializer =
    _$Erc1155LazyAssetTypeAssetClassEnumSerializer();

class _$Erc1155LazyAssetTypeAssetClassEnumSerializer
    implements PrimitiveSerializer<Erc1155LazyAssetTypeAssetClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eRC1155LAZY': 'ERC1155_LAZY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ERC1155_LAZY': 'eRC1155LAZY',
  };

  @override
  final Iterable<Type> types = const <Type>[Erc1155LazyAssetTypeAssetClassEnum];
  @override
  final String wireName = 'Erc1155LazyAssetTypeAssetClassEnum';

  @override
  Object serialize(
          Serializers serializers, Erc1155LazyAssetTypeAssetClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Erc1155LazyAssetTypeAssetClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Erc1155LazyAssetTypeAssetClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Erc1155LazyAssetType extends Erc1155LazyAssetType {
  @override
  final Erc1155LazyAssetTypeAssetClassEnum assetClass;
  @override
  final String contract;
  @override
  final String tokenId;
  @override
  final String uri;
  @override
  final String supply;
  @override
  final BuiltList<ModelPart> creators;
  @override
  final BuiltList<ModelPart> royalties;
  @override
  final BuiltList<String> signatures;

  factory _$Erc1155LazyAssetType(
          [void Function(Erc1155LazyAssetTypeBuilder)? updates]) =>
      (Erc1155LazyAssetTypeBuilder()..update(updates))._build();

  _$Erc1155LazyAssetType._(
      {required this.assetClass,
      required this.contract,
      required this.tokenId,
      required this.uri,
      required this.supply,
      required this.creators,
      required this.royalties,
      required this.signatures})
      : super._();
  @override
  Erc1155LazyAssetType rebuild(
          void Function(Erc1155LazyAssetTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc1155LazyAssetTypeBuilder toBuilder() =>
      Erc1155LazyAssetTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc1155LazyAssetType &&
        assetClass == other.assetClass &&
        contract == other.contract &&
        tokenId == other.tokenId &&
        uri == other.uri &&
        supply == other.supply &&
        creators == other.creators &&
        royalties == other.royalties &&
        signatures == other.signatures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, supply.hashCode);
    _$hash = $jc(_$hash, creators.hashCode);
    _$hash = $jc(_$hash, royalties.hashCode);
    _$hash = $jc(_$hash, signatures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Erc1155LazyAssetType')
          ..add('assetClass', assetClass)
          ..add('contract', contract)
          ..add('tokenId', tokenId)
          ..add('uri', uri)
          ..add('supply', supply)
          ..add('creators', creators)
          ..add('royalties', royalties)
          ..add('signatures', signatures))
        .toString();
  }
}

class Erc1155LazyAssetTypeBuilder
    implements Builder<Erc1155LazyAssetType, Erc1155LazyAssetTypeBuilder> {
  _$Erc1155LazyAssetType? _$v;

  Erc1155LazyAssetTypeAssetClassEnum? _assetClass;
  Erc1155LazyAssetTypeAssetClassEnum? get assetClass => _$this._assetClass;
  set assetClass(Erc1155LazyAssetTypeAssetClassEnum? assetClass) =>
      _$this._assetClass = assetClass;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _supply;
  String? get supply => _$this._supply;
  set supply(String? supply) => _$this._supply = supply;

  ListBuilder<ModelPart>? _creators;
  ListBuilder<ModelPart> get creators =>
      _$this._creators ??= ListBuilder<ModelPart>();
  set creators(ListBuilder<ModelPart>? creators) => _$this._creators = creators;

  ListBuilder<ModelPart>? _royalties;
  ListBuilder<ModelPart> get royalties =>
      _$this._royalties ??= ListBuilder<ModelPart>();
  set royalties(ListBuilder<ModelPart>? royalties) =>
      _$this._royalties = royalties;

  ListBuilder<String>? _signatures;
  ListBuilder<String> get signatures =>
      _$this._signatures ??= ListBuilder<String>();
  set signatures(ListBuilder<String>? signatures) =>
      _$this._signatures = signatures;

  Erc1155LazyAssetTypeBuilder() {
    Erc1155LazyAssetType._defaults(this);
  }

  Erc1155LazyAssetTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetClass = $v.assetClass;
      _contract = $v.contract;
      _tokenId = $v.tokenId;
      _uri = $v.uri;
      _supply = $v.supply;
      _creators = $v.creators.toBuilder();
      _royalties = $v.royalties.toBuilder();
      _signatures = $v.signatures.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Erc1155LazyAssetType other) {
    _$v = other as _$Erc1155LazyAssetType;
  }

  @override
  void update(void Function(Erc1155LazyAssetTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc1155LazyAssetType build() => _build();

  _$Erc1155LazyAssetType _build() {
    _$Erc1155LazyAssetType _$result;
    try {
      _$result = _$v ??
          _$Erc1155LazyAssetType._(
            assetClass: BuiltValueNullFieldError.checkNotNull(
                assetClass, r'Erc1155LazyAssetType', 'assetClass'),
            contract: BuiltValueNullFieldError.checkNotNull(
                contract, r'Erc1155LazyAssetType', 'contract'),
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'Erc1155LazyAssetType', 'tokenId'),
            uri: BuiltValueNullFieldError.checkNotNull(
                uri, r'Erc1155LazyAssetType', 'uri'),
            supply: BuiltValueNullFieldError.checkNotNull(
                supply, r'Erc1155LazyAssetType', 'supply'),
            creators: creators.build(),
            royalties: royalties.build(),
            signatures: signatures.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creators';
        creators.build();
        _$failedField = 'royalties';
        royalties.build();
        _$failedField = 'signatures';
        signatures.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Erc1155LazyAssetType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
