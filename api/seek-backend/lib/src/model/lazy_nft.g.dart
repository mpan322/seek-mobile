// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lazy_nft.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LazyNftAtTypeEnum _$lazyNftAtTypeEnum_eRC1155 =
    const LazyNftAtTypeEnum._('eRC1155');

LazyNftAtTypeEnum _$lazyNftAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'eRC1155':
      return _$lazyNftAtTypeEnum_eRC1155;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LazyNftAtTypeEnum> _$lazyNftAtTypeEnumValues =
    BuiltSet<LazyNftAtTypeEnum>(const <LazyNftAtTypeEnum>[
  _$lazyNftAtTypeEnum_eRC1155,
]);

Serializer<LazyNftAtTypeEnum> _$lazyNftAtTypeEnumSerializer =
    _$LazyNftAtTypeEnumSerializer();

class _$LazyNftAtTypeEnumSerializer
    implements PrimitiveSerializer<LazyNftAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eRC1155': 'ERC1155',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ERC1155': 'eRC1155',
  };

  @override
  final Iterable<Type> types = const <Type>[LazyNftAtTypeEnum];
  @override
  final String wireName = 'LazyNftAtTypeEnum';

  @override
  Object serialize(Serializers serializers, LazyNftAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LazyNftAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LazyNftAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LazyNft extends LazyNft {
  @override
  final String tokenId;
  @override
  final BuiltList<ModelPart> creators;
  @override
  final BuiltList<ModelPart> royalties;
  @override
  final String contract;
  @override
  final String uri;
  @override
  final BuiltList<String> signatures;
  @override
  final OneOf oneOf;

  factory _$LazyNft([void Function(LazyNftBuilder)? updates]) =>
      (LazyNftBuilder()..update(updates))._build();

  _$LazyNft._(
      {required this.tokenId,
      required this.creators,
      required this.royalties,
      required this.contract,
      required this.uri,
      required this.signatures,
      required this.oneOf})
      : super._();
  @override
  LazyNft rebuild(void Function(LazyNftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LazyNftBuilder toBuilder() => LazyNftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LazyNft &&
        tokenId == other.tokenId &&
        creators == other.creators &&
        royalties == other.royalties &&
        contract == other.contract &&
        uri == other.uri &&
        signatures == other.signatures &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, creators.hashCode);
    _$hash = $jc(_$hash, royalties.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, signatures.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LazyNft')
          ..add('tokenId', tokenId)
          ..add('creators', creators)
          ..add('royalties', royalties)
          ..add('contract', contract)
          ..add('uri', uri)
          ..add('signatures', signatures)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class LazyNftBuilder implements Builder<LazyNft, LazyNftBuilder> {
  _$LazyNft? _$v;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  ListBuilder<ModelPart>? _creators;
  ListBuilder<ModelPart> get creators =>
      _$this._creators ??= ListBuilder<ModelPart>();
  set creators(ListBuilder<ModelPart>? creators) => _$this._creators = creators;

  ListBuilder<ModelPart>? _royalties;
  ListBuilder<ModelPart> get royalties =>
      _$this._royalties ??= ListBuilder<ModelPart>();
  set royalties(ListBuilder<ModelPart>? royalties) =>
      _$this._royalties = royalties;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  ListBuilder<String>? _signatures;
  ListBuilder<String> get signatures =>
      _$this._signatures ??= ListBuilder<String>();
  set signatures(ListBuilder<String>? signatures) =>
      _$this._signatures = signatures;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  LazyNftBuilder() {
    LazyNft._defaults(this);
  }

  LazyNftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenId = $v.tokenId;
      _creators = $v.creators.toBuilder();
      _royalties = $v.royalties.toBuilder();
      _contract = $v.contract;
      _uri = $v.uri;
      _signatures = $v.signatures.toBuilder();
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LazyNft other) {
    _$v = other as _$LazyNft;
  }

  @override
  void update(void Function(LazyNftBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LazyNft build() => _build();

  _$LazyNft _build() {
    _$LazyNft _$result;
    try {
      _$result = _$v ??
          _$LazyNft._(
            tokenId: BuiltValueNullFieldError.checkNotNull(
                tokenId, r'LazyNft', 'tokenId'),
            creators: creators.build(),
            royalties: royalties.build(),
            contract: BuiltValueNullFieldError.checkNotNull(
                contract, r'LazyNft', 'contract'),
            uri: BuiltValueNullFieldError.checkNotNull(uri, r'LazyNft', 'uri'),
            signatures: signatures.build(),
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'LazyNft', 'oneOf'),
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
            r'LazyNft', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
