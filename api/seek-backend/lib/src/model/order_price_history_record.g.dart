// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_price_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderPriceHistoryRecord extends OrderPriceHistoryRecord {
  @override
  final DateTime date;
  @override
  final String makeValue;
  @override
  final String takeValue;

  factory _$OrderPriceHistoryRecord(
          [void Function(OrderPriceHistoryRecordBuilder)? updates]) =>
      (OrderPriceHistoryRecordBuilder()..update(updates))._build();

  _$OrderPriceHistoryRecord._(
      {required this.date, required this.makeValue, required this.takeValue})
      : super._();
  @override
  OrderPriceHistoryRecord rebuild(
          void Function(OrderPriceHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderPriceHistoryRecordBuilder toBuilder() =>
      OrderPriceHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderPriceHistoryRecord &&
        date == other.date &&
        makeValue == other.makeValue &&
        takeValue == other.takeValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, makeValue.hashCode);
    _$hash = $jc(_$hash, takeValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderPriceHistoryRecord')
          ..add('date', date)
          ..add('makeValue', makeValue)
          ..add('takeValue', takeValue))
        .toString();
  }
}

class OrderPriceHistoryRecordBuilder
    implements
        Builder<OrderPriceHistoryRecord, OrderPriceHistoryRecordBuilder> {
  _$OrderPriceHistoryRecord? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _makeValue;
  String? get makeValue => _$this._makeValue;
  set makeValue(String? makeValue) => _$this._makeValue = makeValue;

  String? _takeValue;
  String? get takeValue => _$this._takeValue;
  set takeValue(String? takeValue) => _$this._takeValue = takeValue;

  OrderPriceHistoryRecordBuilder() {
    OrderPriceHistoryRecord._defaults(this);
  }

  OrderPriceHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _makeValue = $v.makeValue;
      _takeValue = $v.takeValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderPriceHistoryRecord other) {
    _$v = other as _$OrderPriceHistoryRecord;
  }

  @override
  void update(void Function(OrderPriceHistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderPriceHistoryRecord build() => _build();

  _$OrderPriceHistoryRecord _build() {
    final _$result = _$v ??
        _$OrderPriceHistoryRecord._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'OrderPriceHistoryRecord', 'date'),
          makeValue: BuiltValueNullFieldError.checkNotNull(
              makeValue, r'OrderPriceHistoryRecord', 'makeValue'),
          takeValue: BuiltValueNullFieldError.checkNotNull(
              takeValue, r'OrderPriceHistoryRecord', 'takeValue'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
