// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encoded_order_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EncodedOrderData extends EncodedOrderData {
  @override
  final String type;
  @override
  final String data;

  factory _$EncodedOrderData(
          [void Function(EncodedOrderDataBuilder)? updates]) =>
      (EncodedOrderDataBuilder()..update(updates))._build();

  _$EncodedOrderData._({required this.type, required this.data}) : super._();
  @override
  EncodedOrderData rebuild(void Function(EncodedOrderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EncodedOrderDataBuilder toBuilder() =>
      EncodedOrderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EncodedOrderData &&
        type == other.type &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EncodedOrderData')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class EncodedOrderDataBuilder
    implements Builder<EncodedOrderData, EncodedOrderDataBuilder> {
  _$EncodedOrderData? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  EncodedOrderDataBuilder() {
    EncodedOrderData._defaults(this);
  }

  EncodedOrderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EncodedOrderData other) {
    _$v = other as _$EncodedOrderData;
  }

  @override
  void update(void Function(EncodedOrderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EncodedOrderData build() => _build();

  _$EncodedOrderData _build() {
    final _$result = _$v ??
        _$EncodedOrderData._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'EncodedOrderData', 'type'),
          data: BuiltValueNullFieldError.checkNotNull(
              data, r'EncodedOrderData', 'data'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
