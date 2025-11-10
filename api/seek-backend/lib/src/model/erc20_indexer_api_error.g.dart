// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc20_indexer_api_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Erc20IndexerApiErrorCodeEnum _$erc20IndexerApiErrorCodeEnum_UNKNOWN =
    const Erc20IndexerApiErrorCodeEnum._('UNKNOWN');
const Erc20IndexerApiErrorCodeEnum _$erc20IndexerApiErrorCodeEnum_VALIDATION =
    const Erc20IndexerApiErrorCodeEnum._('VALIDATION');
const Erc20IndexerApiErrorCodeEnum
    _$erc20IndexerApiErrorCodeEnum_TOKEN_NOT_FOUND =
    const Erc20IndexerApiErrorCodeEnum._('TOKEN_NOT_FOUND');
const Erc20IndexerApiErrorCodeEnum
    _$erc20IndexerApiErrorCodeEnum_BALANCE_NOT_FOUND =
    const Erc20IndexerApiErrorCodeEnum._('BALANCE_NOT_FOUND');

Erc20IndexerApiErrorCodeEnum _$erc20IndexerApiErrorCodeEnumValueOf(
    String name) {
  switch (name) {
    case 'UNKNOWN':
      return _$erc20IndexerApiErrorCodeEnum_UNKNOWN;
    case 'VALIDATION':
      return _$erc20IndexerApiErrorCodeEnum_VALIDATION;
    case 'TOKEN_NOT_FOUND':
      return _$erc20IndexerApiErrorCodeEnum_TOKEN_NOT_FOUND;
    case 'BALANCE_NOT_FOUND':
      return _$erc20IndexerApiErrorCodeEnum_BALANCE_NOT_FOUND;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Erc20IndexerApiErrorCodeEnum>
    _$erc20IndexerApiErrorCodeEnumValues =
    BuiltSet<Erc20IndexerApiErrorCodeEnum>(const <Erc20IndexerApiErrorCodeEnum>[
  _$erc20IndexerApiErrorCodeEnum_UNKNOWN,
  _$erc20IndexerApiErrorCodeEnum_VALIDATION,
  _$erc20IndexerApiErrorCodeEnum_TOKEN_NOT_FOUND,
  _$erc20IndexerApiErrorCodeEnum_BALANCE_NOT_FOUND,
]);

Serializer<Erc20IndexerApiErrorCodeEnum>
    _$erc20IndexerApiErrorCodeEnumSerializer =
    _$Erc20IndexerApiErrorCodeEnumSerializer();

class _$Erc20IndexerApiErrorCodeEnumSerializer
    implements PrimitiveSerializer<Erc20IndexerApiErrorCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNKNOWN': 'UNKNOWN',
    'VALIDATION': 'VALIDATION',
    'TOKEN_NOT_FOUND': 'TOKEN_NOT_FOUND',
    'BALANCE_NOT_FOUND': 'BALANCE_NOT_FOUND',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNKNOWN': 'UNKNOWN',
    'VALIDATION': 'VALIDATION',
    'TOKEN_NOT_FOUND': 'TOKEN_NOT_FOUND',
    'BALANCE_NOT_FOUND': 'BALANCE_NOT_FOUND',
  };

  @override
  final Iterable<Type> types = const <Type>[Erc20IndexerApiErrorCodeEnum];
  @override
  final String wireName = 'Erc20IndexerApiErrorCodeEnum';

  @override
  Object serialize(Serializers serializers, Erc20IndexerApiErrorCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Erc20IndexerApiErrorCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Erc20IndexerApiErrorCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Erc20IndexerApiError extends Erc20IndexerApiError {
  @override
  final int status;
  @override
  final Erc20IndexerApiErrorCodeEnum code;
  @override
  final String message;

  factory _$Erc20IndexerApiError(
          [void Function(Erc20IndexerApiErrorBuilder)? updates]) =>
      (Erc20IndexerApiErrorBuilder()..update(updates))._build();

  _$Erc20IndexerApiError._(
      {required this.status, required this.code, required this.message})
      : super._();
  @override
  Erc20IndexerApiError rebuild(
          void Function(Erc20IndexerApiErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Erc20IndexerApiErrorBuilder toBuilder() =>
      Erc20IndexerApiErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Erc20IndexerApiError &&
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
    return (newBuiltValueToStringHelper(r'Erc20IndexerApiError')
          ..add('status', status)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class Erc20IndexerApiErrorBuilder
    implements Builder<Erc20IndexerApiError, Erc20IndexerApiErrorBuilder> {
  _$Erc20IndexerApiError? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  Erc20IndexerApiErrorCodeEnum? _code;
  Erc20IndexerApiErrorCodeEnum? get code => _$this._code;
  set code(Erc20IndexerApiErrorCodeEnum? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Erc20IndexerApiErrorBuilder() {
    Erc20IndexerApiError._defaults(this);
  }

  Erc20IndexerApiErrorBuilder get _$this {
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
  void replace(Erc20IndexerApiError other) {
    _$v = other as _$Erc20IndexerApiError;
  }

  @override
  void update(void Function(Erc20IndexerApiErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Erc20IndexerApiError build() => _build();

  _$Erc20IndexerApiError _build() {
    final _$result = _$v ??
        _$Erc20IndexerApiError._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'Erc20IndexerApiError', 'status'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'Erc20IndexerApiError', 'code'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'Erc20IndexerApiError', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
