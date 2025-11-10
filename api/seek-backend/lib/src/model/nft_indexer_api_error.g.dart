// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_indexer_api_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftIndexerApiErrorCodeEnum _$nftIndexerApiErrorCodeEnum_UNKNOWN =
    const NftIndexerApiErrorCodeEnum._('UNKNOWN');
const NftIndexerApiErrorCodeEnum _$nftIndexerApiErrorCodeEnum_BAD_REQUEST =
    const NftIndexerApiErrorCodeEnum._('BAD_REQUEST');
const NftIndexerApiErrorCodeEnum _$nftIndexerApiErrorCodeEnum_VALIDATION =
    const NftIndexerApiErrorCodeEnum._('VALIDATION');
const NftIndexerApiErrorCodeEnum _$nftIndexerApiErrorCodeEnum_ITEM_NOT_FOUND =
    const NftIndexerApiErrorCodeEnum._('ITEM_NOT_FOUND');
const NftIndexerApiErrorCodeEnum
    _$nftIndexerApiErrorCodeEnum_LAZY_ITEM_NOT_FOUND =
    const NftIndexerApiErrorCodeEnum._('LAZY_ITEM_NOT_FOUND');
const NftIndexerApiErrorCodeEnum _$nftIndexerApiErrorCodeEnum_TOKEN_NOT_FOUND =
    const NftIndexerApiErrorCodeEnum._('TOKEN_NOT_FOUND');
const NftIndexerApiErrorCodeEnum
    _$nftIndexerApiErrorCodeEnum_TOKEN_URI_NOT_FOUND =
    const NftIndexerApiErrorCodeEnum._('TOKEN_URI_NOT_FOUND');
const NftIndexerApiErrorCodeEnum
    _$nftIndexerApiErrorCodeEnum_TOKEN_PROPERTIES_EXTRACT =
    const NftIndexerApiErrorCodeEnum._('TOKEN_PROPERTIES_EXTRACT');
const NftIndexerApiErrorCodeEnum
    _$nftIndexerApiErrorCodeEnum_OWNERSHIP_NOT_FOUND =
    const NftIndexerApiErrorCodeEnum._('OWNERSHIP_NOT_FOUND');
const NftIndexerApiErrorCodeEnum
    _$nftIndexerApiErrorCodeEnum_COLLECTION_NOT_FOUND =
    const NftIndexerApiErrorCodeEnum._('COLLECTION_NOT_FOUND');
const NftIndexerApiErrorCodeEnum
    _$nftIndexerApiErrorCodeEnum_INCORRECT_LAZY_NFT =
    const NftIndexerApiErrorCodeEnum._('INCORRECT_LAZY_NFT');

NftIndexerApiErrorCodeEnum _$nftIndexerApiErrorCodeEnumValueOf(String name) {
  switch (name) {
    case 'UNKNOWN':
      return _$nftIndexerApiErrorCodeEnum_UNKNOWN;
    case 'BAD_REQUEST':
      return _$nftIndexerApiErrorCodeEnum_BAD_REQUEST;
    case 'VALIDATION':
      return _$nftIndexerApiErrorCodeEnum_VALIDATION;
    case 'ITEM_NOT_FOUND':
      return _$nftIndexerApiErrorCodeEnum_ITEM_NOT_FOUND;
    case 'LAZY_ITEM_NOT_FOUND':
      return _$nftIndexerApiErrorCodeEnum_LAZY_ITEM_NOT_FOUND;
    case 'TOKEN_NOT_FOUND':
      return _$nftIndexerApiErrorCodeEnum_TOKEN_NOT_FOUND;
    case 'TOKEN_URI_NOT_FOUND':
      return _$nftIndexerApiErrorCodeEnum_TOKEN_URI_NOT_FOUND;
    case 'TOKEN_PROPERTIES_EXTRACT':
      return _$nftIndexerApiErrorCodeEnum_TOKEN_PROPERTIES_EXTRACT;
    case 'OWNERSHIP_NOT_FOUND':
      return _$nftIndexerApiErrorCodeEnum_OWNERSHIP_NOT_FOUND;
    case 'COLLECTION_NOT_FOUND':
      return _$nftIndexerApiErrorCodeEnum_COLLECTION_NOT_FOUND;
    case 'INCORRECT_LAZY_NFT':
      return _$nftIndexerApiErrorCodeEnum_INCORRECT_LAZY_NFT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftIndexerApiErrorCodeEnum> _$nftIndexerApiErrorCodeEnumValues =
    BuiltSet<NftIndexerApiErrorCodeEnum>(const <NftIndexerApiErrorCodeEnum>[
  _$nftIndexerApiErrorCodeEnum_UNKNOWN,
  _$nftIndexerApiErrorCodeEnum_BAD_REQUEST,
  _$nftIndexerApiErrorCodeEnum_VALIDATION,
  _$nftIndexerApiErrorCodeEnum_ITEM_NOT_FOUND,
  _$nftIndexerApiErrorCodeEnum_LAZY_ITEM_NOT_FOUND,
  _$nftIndexerApiErrorCodeEnum_TOKEN_NOT_FOUND,
  _$nftIndexerApiErrorCodeEnum_TOKEN_URI_NOT_FOUND,
  _$nftIndexerApiErrorCodeEnum_TOKEN_PROPERTIES_EXTRACT,
  _$nftIndexerApiErrorCodeEnum_OWNERSHIP_NOT_FOUND,
  _$nftIndexerApiErrorCodeEnum_COLLECTION_NOT_FOUND,
  _$nftIndexerApiErrorCodeEnum_INCORRECT_LAZY_NFT,
]);

Serializer<NftIndexerApiErrorCodeEnum> _$nftIndexerApiErrorCodeEnumSerializer =
    _$NftIndexerApiErrorCodeEnumSerializer();

class _$NftIndexerApiErrorCodeEnumSerializer
    implements PrimitiveSerializer<NftIndexerApiErrorCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNKNOWN': 'UNKNOWN',
    'BAD_REQUEST': 'BAD_REQUEST',
    'VALIDATION': 'VALIDATION',
    'ITEM_NOT_FOUND': 'ITEM_NOT_FOUND',
    'LAZY_ITEM_NOT_FOUND': 'LAZY_ITEM_NOT_FOUND',
    'TOKEN_NOT_FOUND': 'TOKEN_NOT_FOUND',
    'TOKEN_URI_NOT_FOUND': 'TOKEN_URI_NOT_FOUND',
    'TOKEN_PROPERTIES_EXTRACT': 'TOKEN_PROPERTIES_EXTRACT',
    'OWNERSHIP_NOT_FOUND': 'OWNERSHIP_NOT_FOUND',
    'COLLECTION_NOT_FOUND': 'COLLECTION_NOT_FOUND',
    'INCORRECT_LAZY_NFT': 'INCORRECT_LAZY_NFT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNKNOWN': 'UNKNOWN',
    'BAD_REQUEST': 'BAD_REQUEST',
    'VALIDATION': 'VALIDATION',
    'ITEM_NOT_FOUND': 'ITEM_NOT_FOUND',
    'LAZY_ITEM_NOT_FOUND': 'LAZY_ITEM_NOT_FOUND',
    'TOKEN_NOT_FOUND': 'TOKEN_NOT_FOUND',
    'TOKEN_URI_NOT_FOUND': 'TOKEN_URI_NOT_FOUND',
    'TOKEN_PROPERTIES_EXTRACT': 'TOKEN_PROPERTIES_EXTRACT',
    'OWNERSHIP_NOT_FOUND': 'OWNERSHIP_NOT_FOUND',
    'COLLECTION_NOT_FOUND': 'COLLECTION_NOT_FOUND',
    'INCORRECT_LAZY_NFT': 'INCORRECT_LAZY_NFT',
  };

  @override
  final Iterable<Type> types = const <Type>[NftIndexerApiErrorCodeEnum];
  @override
  final String wireName = 'NftIndexerApiErrorCodeEnum';

  @override
  Object serialize(Serializers serializers, NftIndexerApiErrorCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftIndexerApiErrorCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftIndexerApiErrorCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftIndexerApiError extends NftIndexerApiError {
  @override
  final int status;
  @override
  final NftIndexerApiErrorCodeEnum code;
  @override
  final String message;

  factory _$NftIndexerApiError(
          [void Function(NftIndexerApiErrorBuilder)? updates]) =>
      (NftIndexerApiErrorBuilder()..update(updates))._build();

  _$NftIndexerApiError._(
      {required this.status, required this.code, required this.message})
      : super._();
  @override
  NftIndexerApiError rebuild(
          void Function(NftIndexerApiErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftIndexerApiErrorBuilder toBuilder() =>
      NftIndexerApiErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftIndexerApiError &&
        status == other.status &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftIndexerApiError')
          ..add('status', status)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class NftIndexerApiErrorBuilder
    implements Builder<NftIndexerApiError, NftIndexerApiErrorBuilder> {
  _$NftIndexerApiError? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  NftIndexerApiErrorCodeEnum? _code;
  NftIndexerApiErrorCodeEnum? get code => _$this._code;
  set code(NftIndexerApiErrorCodeEnum? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  NftIndexerApiErrorBuilder() {
    NftIndexerApiError._defaults(this);
  }

  NftIndexerApiErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftIndexerApiError other) {
    _$v = other as _$NftIndexerApiError;
  }

  @override
  void update(void Function(NftIndexerApiErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftIndexerApiError build() => _build();

  _$NftIndexerApiError _build() {
    final _$result = _$v ??
        _$NftIndexerApiError._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'NftIndexerApiError', 'status'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'NftIndexerApiError', 'code'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'NftIndexerApiError', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
