// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LockForm extends LockForm {
  @override
  final String content;
  @override
  final String? signature;

  factory _$LockForm([void Function(LockFormBuilder)? updates]) =>
      (LockFormBuilder()..update(updates))._build();

  _$LockForm._({required this.content, this.signature}) : super._();
  @override
  LockForm rebuild(void Function(LockFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LockFormBuilder toBuilder() => LockFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LockForm &&
        content == other.content &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LockForm')
          ..add('content', content)
          ..add('signature', signature))
        .toString();
  }
}

class LockFormBuilder implements Builder<LockForm, LockFormBuilder> {
  _$LockForm? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  LockFormBuilder() {
    LockForm._defaults(this);
  }

  LockFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LockForm other) {
    _$v = other as _$LockForm;
  }

  @override
  void update(void Function(LockFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LockForm build() => _build();

  _$LockForm _build() {
    final _$result = _$v ??
        _$LockForm._(
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'LockForm', 'content'),
          signature: signature,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
