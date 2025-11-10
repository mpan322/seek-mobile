// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftActivityAtTypeEnum _$nftActivityAtTypeEnum_transfer =
    const NftActivityAtTypeEnum._('transfer');

NftActivityAtTypeEnum _$nftActivityAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'transfer':
      return _$nftActivityAtTypeEnum_transfer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftActivityAtTypeEnum> _$nftActivityAtTypeEnumValues =
    BuiltSet<NftActivityAtTypeEnum>(const <NftActivityAtTypeEnum>[
  _$nftActivityAtTypeEnum_transfer,
]);

Serializer<NftActivityAtTypeEnum> _$nftActivityAtTypeEnumSerializer =
    _$NftActivityAtTypeEnumSerializer();

class _$NftActivityAtTypeEnumSerializer
    implements PrimitiveSerializer<NftActivityAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'transfer': 'transfer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'transfer': 'transfer',
  };

  @override
  final Iterable<Type> types = const <Type>[NftActivityAtTypeEnum];
  @override
  final String wireName = 'NftActivityAtTypeEnum';

  @override
  Object serialize(Serializers serializers, NftActivityAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftActivityAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftActivityAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftActivity extends NftActivity {
  @override
  final String owner;
  @override
  final String blockHash;
  @override
  final int logIndex;
  @override
  final String tokenId;
  @override
  final String contract;
  @override
  final int blockNumber;
  @override
  final String value;
  @override
  final String transactionHash;
  @override
  final OneOf oneOf;

  factory _$NftActivity([void Function(NftActivityBuilder)? updates]) =>
      (NftActivityBuilder()..update(updates))._build();

  _$NftActivity._(
      {required this.owner,
      required this.blockHash,
      required this.logIndex,
      required this.tokenId,
      required this.contract,
      required this.blockNumber,
      required this.value,
      required this.transactionHash,
      required this.oneOf})
      : super._();
  @override
  NftActivity rebuild(void Function(NftActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftActivityBuilder toBuilder() => NftActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftActivity &&
        owner == other.owner &&
        blockHash == other.blockHash &&
        logIndex == other.logIndex &&
        tokenId == other.tokenId &&
        contract == other.contract &&
        blockNumber == other.blockNumber &&
        value == other.value &&
        transactionHash == other.transactionHash &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, blockHash.hashCode);
    _$hash = $jc(_$hash, logIndex.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, blockNumber.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, transactionHash.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftActivity')
          ..add('owner', owner)
          ..add('blockHash', blockHash)
          ..add('logIndex', logIndex)
          ..add('tokenId', tokenId)
          ..add('contract', contract)
          ..add('blockNumber', blockNumber)
          ..add('value', value)
          ..add('transactionHash', transactionHash)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftActivityBuilder implements Builder<NftActivity, NftActivityBuilder> {
  _$NftActivity? _$v;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _blockHash;
  String? get blockHash => _$this._blockHash;
  set blockHash(String? blockHash) => _$this._blockHash = blockHash;

  int? _logIndex;
  int? get logIndex => _$this._logIndex;
  set logIndex(int? logIndex) => _$this._logIndex = logIndex;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  int? _blockNumber;
  int? get blockNumber => _$this._blockNumber;
  set blockNumber(int? blockNumber) => _$this._blockNumber = blockNumber;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _transactionHash;
  String? get transactionHash => _$this._transactionHash;
  set transactionHash(String? transactionHash) =>
      _$this._transactionHash = transactionHash;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftActivityBuilder() {
    NftActivity._defaults(this);
  }

  NftActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _blockHash = $v.blockHash;
      _logIndex = $v.logIndex;
      _tokenId = $v.tokenId;
      _contract = $v.contract;
      _blockNumber = $v.blockNumber;
      _value = $v.value;
      _transactionHash = $v.transactionHash;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftActivity other) {
    _$v = other as _$NftActivity;
  }

  @override
  void update(void Function(NftActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftActivity build() => _build();

  _$NftActivity _build() {
    final _$result = _$v ??
        _$NftActivity._(
          owner: BuiltValueNullFieldError.checkNotNull(
              owner, r'NftActivity', 'owner'),
          blockHash: BuiltValueNullFieldError.checkNotNull(
              blockHash, r'NftActivity', 'blockHash'),
          logIndex: BuiltValueNullFieldError.checkNotNull(
              logIndex, r'NftActivity', 'logIndex'),
          tokenId: BuiltValueNullFieldError.checkNotNull(
              tokenId, r'NftActivity', 'tokenId'),
          contract: BuiltValueNullFieldError.checkNotNull(
              contract, r'NftActivity', 'contract'),
          blockNumber: BuiltValueNullFieldError.checkNotNull(
              blockNumber, r'NftActivity', 'blockNumber'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'NftActivity', 'value'),
          transactionHash: BuiltValueNullFieldError.checkNotNull(
              transactionHash, r'NftActivity', 'transactionHash'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftActivity', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
