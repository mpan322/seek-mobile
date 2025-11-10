// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransactionRequest extends CreateTransactionRequest {
  @override
  final String hash;
  @override
  final String from;
  @override
  final int nonce;
  @override
  final String input;
  @override
  final String? to;

  factory _$CreateTransactionRequest(
          [void Function(CreateTransactionRequestBuilder)? updates]) =>
      (CreateTransactionRequestBuilder()..update(updates))._build();

  _$CreateTransactionRequest._(
      {required this.hash,
      required this.from,
      required this.nonce,
      required this.input,
      this.to})
      : super._();
  @override
  CreateTransactionRequest rebuild(
          void Function(CreateTransactionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransactionRequestBuilder toBuilder() =>
      CreateTransactionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransactionRequest &&
        hash == other.hash &&
        from == other.from &&
        nonce == other.nonce &&
        input == other.input &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, nonce.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTransactionRequest')
          ..add('hash', hash)
          ..add('from', from)
          ..add('nonce', nonce)
          ..add('input', input)
          ..add('to', to))
        .toString();
  }
}

class CreateTransactionRequestBuilder
    implements
        Builder<CreateTransactionRequest, CreateTransactionRequestBuilder> {
  _$CreateTransactionRequest? _$v;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  int? _nonce;
  int? get nonce => _$this._nonce;
  set nonce(int? nonce) => _$this._nonce = nonce;

  String? _input;
  String? get input => _$this._input;
  set input(String? input) => _$this._input = input;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  CreateTransactionRequestBuilder() {
    CreateTransactionRequest._defaults(this);
  }

  CreateTransactionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hash = $v.hash;
      _from = $v.from;
      _nonce = $v.nonce;
      _input = $v.input;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransactionRequest other) {
    _$v = other as _$CreateTransactionRequest;
  }

  @override
  void update(void Function(CreateTransactionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransactionRequest build() => _build();

  _$CreateTransactionRequest _build() {
    final _$result = _$v ??
        _$CreateTransactionRequest._(
          hash: BuiltValueNullFieldError.checkNotNull(
              hash, r'CreateTransactionRequest', 'hash'),
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'CreateTransactionRequest', 'from'),
          nonce: BuiltValueNullFieldError.checkNotNull(
              nonce, r'CreateTransactionRequest', 'nonce'),
          input: BuiltValueNullFieldError.checkNotNull(
              input, r'CreateTransactionRequest', 'input'),
          to: to,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
