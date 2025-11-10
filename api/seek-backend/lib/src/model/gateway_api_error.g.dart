// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gateway_api_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GatewayApiErrorCodeEnum _$gatewayApiErrorCodeEnum_UNKNOWN =
    const GatewayApiErrorCodeEnum._('UNKNOWN');
const GatewayApiErrorCodeEnum _$gatewayApiErrorCodeEnum_VALIDATION =
    const GatewayApiErrorCodeEnum._('VALIDATION');

GatewayApiErrorCodeEnum _$gatewayApiErrorCodeEnumValueOf(String name) {
  switch (name) {
    case 'UNKNOWN':
      return _$gatewayApiErrorCodeEnum_UNKNOWN;
    case 'VALIDATION':
      return _$gatewayApiErrorCodeEnum_VALIDATION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GatewayApiErrorCodeEnum> _$gatewayApiErrorCodeEnumValues =
    BuiltSet<GatewayApiErrorCodeEnum>(const <GatewayApiErrorCodeEnum>[
  _$gatewayApiErrorCodeEnum_UNKNOWN,
  _$gatewayApiErrorCodeEnum_VALIDATION,
]);

Serializer<GatewayApiErrorCodeEnum> _$gatewayApiErrorCodeEnumSerializer =
    _$GatewayApiErrorCodeEnumSerializer();

class _$GatewayApiErrorCodeEnumSerializer
    implements PrimitiveSerializer<GatewayApiErrorCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNKNOWN': 'UNKNOWN',
    'VALIDATION': 'VALIDATION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNKNOWN': 'UNKNOWN',
    'VALIDATION': 'VALIDATION',
  };

  @override
  final Iterable<Type> types = const <Type>[GatewayApiErrorCodeEnum];
  @override
  final String wireName = 'GatewayApiErrorCodeEnum';

  @override
  Object serialize(Serializers serializers, GatewayApiErrorCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GatewayApiErrorCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GatewayApiErrorCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GatewayApiError extends GatewayApiError {
  @override
  final int status;
  @override
  final GatewayApiErrorCodeEnum code;
  @override
  final String message;

  factory _$GatewayApiError([void Function(GatewayApiErrorBuilder)? updates]) =>
      (GatewayApiErrorBuilder()..update(updates))._build();

  _$GatewayApiError._(
      {required this.status, required this.code, required this.message})
      : super._();
  @override
  GatewayApiError rebuild(void Function(GatewayApiErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GatewayApiErrorBuilder toBuilder() => GatewayApiErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GatewayApiError &&
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
    return (newBuiltValueToStringHelper(r'GatewayApiError')
          ..add('status', status)
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class GatewayApiErrorBuilder
    implements Builder<GatewayApiError, GatewayApiErrorBuilder> {
  _$GatewayApiError? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  GatewayApiErrorCodeEnum? _code;
  GatewayApiErrorCodeEnum? get code => _$this._code;
  set code(GatewayApiErrorCodeEnum? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GatewayApiErrorBuilder() {
    GatewayApiError._defaults(this);
  }

  GatewayApiErrorBuilder get _$this {
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
  void replace(GatewayApiError other) {
    _$v = other as _$GatewayApiError;
  }

  @override
  void update(void Function(GatewayApiErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GatewayApiError build() => _build();

  _$GatewayApiError _build() {
    final _$result = _$v ??
        _$GatewayApiError._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'GatewayApiError', 'status'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'GatewayApiError', 'code'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'GatewayApiError', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
