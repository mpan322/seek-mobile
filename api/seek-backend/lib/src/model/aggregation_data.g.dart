// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregation_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregationData extends AggregationData {
  @override
  final String address;
  @override
  final String sum;
  @override
  final int count;

  factory _$AggregationData([void Function(AggregationDataBuilder)? updates]) =>
      (AggregationDataBuilder()..update(updates))._build();

  _$AggregationData._(
      {required this.address, required this.sum, required this.count})
      : super._();
  @override
  AggregationData rebuild(void Function(AggregationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregationDataBuilder toBuilder() => AggregationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregationData &&
        address == other.address &&
        sum == other.sum &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, sum.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggregationData')
          ..add('address', address)
          ..add('sum', sum)
          ..add('count', count))
        .toString();
  }
}

class AggregationDataBuilder
    implements Builder<AggregationData, AggregationDataBuilder> {
  _$AggregationData? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _sum;
  String? get sum => _$this._sum;
  set sum(String? sum) => _$this._sum = sum;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  AggregationDataBuilder() {
    AggregationData._defaults(this);
  }

  AggregationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _sum = $v.sum;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregationData other) {
    _$v = other as _$AggregationData;
  }

  @override
  void update(void Function(AggregationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregationData build() => _build();

  _$AggregationData _build() {
    final _$result = _$v ??
        _$AggregationData._(
          address: BuiltValueNullFieldError.checkNotNull(
              address, r'AggregationData', 'address'),
          sum: BuiltValueNullFieldError.checkNotNull(
              sum, r'AggregationData', 'sum'),
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'AggregationData', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
