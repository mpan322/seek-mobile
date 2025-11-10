// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_order_tx_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrepareOrderTxForm extends PrepareOrderTxForm {
  @override
  final String maker;
  @override
  final String amount;
  @override
  final BuiltList<ModelPart> payouts;
  @override
  final BuiltList<ModelPart> originFees;

  factory _$PrepareOrderTxForm(
          [void Function(PrepareOrderTxFormBuilder)? updates]) =>
      (PrepareOrderTxFormBuilder()..update(updates))._build();

  _$PrepareOrderTxForm._(
      {required this.maker,
      required this.amount,
      required this.payouts,
      required this.originFees})
      : super._();
  @override
  PrepareOrderTxForm rebuild(
          void Function(PrepareOrderTxFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrepareOrderTxFormBuilder toBuilder() =>
      PrepareOrderTxFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrepareOrderTxForm &&
        maker == other.maker &&
        amount == other.amount &&
        payouts == other.payouts &&
        originFees == other.originFees;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, payouts.hashCode);
    _$hash = $jc(_$hash, originFees.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrepareOrderTxForm')
          ..add('maker', maker)
          ..add('amount', amount)
          ..add('payouts', payouts)
          ..add('originFees', originFees))
        .toString();
  }
}

class PrepareOrderTxFormBuilder
    implements Builder<PrepareOrderTxForm, PrepareOrderTxFormBuilder> {
  _$PrepareOrderTxForm? _$v;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  ListBuilder<ModelPart>? _payouts;
  ListBuilder<ModelPart> get payouts =>
      _$this._payouts ??= ListBuilder<ModelPart>();
  set payouts(ListBuilder<ModelPart>? payouts) => _$this._payouts = payouts;

  ListBuilder<ModelPart>? _originFees;
  ListBuilder<ModelPart> get originFees =>
      _$this._originFees ??= ListBuilder<ModelPart>();
  set originFees(ListBuilder<ModelPart>? originFees) =>
      _$this._originFees = originFees;

  PrepareOrderTxFormBuilder() {
    PrepareOrderTxForm._defaults(this);
  }

  PrepareOrderTxFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maker = $v.maker;
      _amount = $v.amount;
      _payouts = $v.payouts.toBuilder();
      _originFees = $v.originFees.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrepareOrderTxForm other) {
    _$v = other as _$PrepareOrderTxForm;
  }

  @override
  void update(void Function(PrepareOrderTxFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrepareOrderTxForm build() => _build();

  _$PrepareOrderTxForm _build() {
    _$PrepareOrderTxForm _$result;
    try {
      _$result = _$v ??
          _$PrepareOrderTxForm._(
            maker: BuiltValueNullFieldError.checkNotNull(
                maker, r'PrepareOrderTxForm', 'maker'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'PrepareOrderTxForm', 'amount'),
            payouts: payouts.build(),
            originFees: originFees.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payouts';
        payouts.build();
        _$failedField = 'originFees';
        originFees.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PrepareOrderTxForm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
