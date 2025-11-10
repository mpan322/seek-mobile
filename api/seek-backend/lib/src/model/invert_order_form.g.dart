// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invert_order_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvertOrderForm extends InvertOrderForm {
  @override
  final String maker;
  @override
  final String amount;
  @override
  final String salt;
  @override
  final BuiltList<ModelPart> originFees;

  factory _$InvertOrderForm([void Function(InvertOrderFormBuilder)? updates]) =>
      (InvertOrderFormBuilder()..update(updates))._build();

  _$InvertOrderForm._(
      {required this.maker,
      required this.amount,
      required this.salt,
      required this.originFees})
      : super._();
  @override
  InvertOrderForm rebuild(void Function(InvertOrderFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvertOrderFormBuilder toBuilder() => InvertOrderFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvertOrderForm &&
        maker == other.maker &&
        amount == other.amount &&
        salt == other.salt &&
        originFees == other.originFees;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, salt.hashCode);
    _$hash = $jc(_$hash, originFees.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvertOrderForm')
          ..add('maker', maker)
          ..add('amount', amount)
          ..add('salt', salt)
          ..add('originFees', originFees))
        .toString();
  }
}

class InvertOrderFormBuilder
    implements Builder<InvertOrderForm, InvertOrderFormBuilder> {
  _$InvertOrderForm? _$v;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  ListBuilder<ModelPart>? _originFees;
  ListBuilder<ModelPart> get originFees =>
      _$this._originFees ??= ListBuilder<ModelPart>();
  set originFees(ListBuilder<ModelPart>? originFees) =>
      _$this._originFees = originFees;

  InvertOrderFormBuilder() {
    InvertOrderForm._defaults(this);
  }

  InvertOrderFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maker = $v.maker;
      _amount = $v.amount;
      _salt = $v.salt;
      _originFees = $v.originFees.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvertOrderForm other) {
    _$v = other as _$InvertOrderForm;
  }

  @override
  void update(void Function(InvertOrderFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvertOrderForm build() => _build();

  _$InvertOrderForm _build() {
    _$InvertOrderForm _$result;
    try {
      _$result = _$v ??
          _$InvertOrderForm._(
            maker: BuiltValueNullFieldError.checkNotNull(
                maker, r'InvertOrderForm', 'maker'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'InvertOrderForm', 'amount'),
            salt: BuiltValueNullFieldError.checkNotNull(
                salt, r'InvertOrderForm', 'salt'),
            originFees: originFees.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'originFees';
        originFees.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvertOrderForm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
