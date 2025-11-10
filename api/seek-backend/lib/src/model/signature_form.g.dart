// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignatureForm extends SignatureForm {
  @override
  final String? signature;

  factory _$SignatureForm([void Function(SignatureFormBuilder)? updates]) =>
      (SignatureFormBuilder()..update(updates))._build();

  _$SignatureForm._({this.signature}) : super._();
  @override
  SignatureForm rebuild(void Function(SignatureFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignatureFormBuilder toBuilder() => SignatureFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignatureForm && signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignatureForm')
          ..add('signature', signature))
        .toString();
  }
}

class SignatureFormBuilder
    implements Builder<SignatureForm, SignatureFormBuilder> {
  _$SignatureForm? _$v;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  SignatureFormBuilder() {
    SignatureForm._defaults(this);
  }

  SignatureFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignatureForm other) {
    _$v = other as _$SignatureForm;
  }

  @override
  void update(void Function(SignatureFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignatureForm build() => _build();

  _$SignatureForm _build() {
    final _$result = _$v ??
        _$SignatureForm._(
          signature: signature,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
