// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_part.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModelPart extends ModelPart {
  @override
  final String account;
  @override
  final int value;

  factory _$ModelPart([void Function(ModelPartBuilder)? updates]) =>
      (ModelPartBuilder()..update(updates))._build();

  _$ModelPart._({required this.account, required this.value}) : super._();
  @override
  ModelPart rebuild(void Function(ModelPartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelPartBuilder toBuilder() => ModelPartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelPart &&
        account == other.account &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelPart')
          ..add('account', account)
          ..add('value', value))
        .toString();
  }
}

class ModelPartBuilder implements Builder<ModelPart, ModelPartBuilder> {
  _$ModelPart? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  ModelPartBuilder() {
    ModelPart._defaults(this);
  }

  ModelPartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelPart other) {
    _$v = other as _$ModelPart;
  }

  @override
  void update(void Function(ModelPartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelPart build() => _build();

  _$ModelPart _build() {
    final _$result = _$v ??
        _$ModelPart._(
          account: BuiltValueNullFieldError.checkNotNull(
              account, r'ModelPart', 'account'),
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'ModelPart', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
