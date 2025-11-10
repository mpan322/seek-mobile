// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_filter_all.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderFilterAllAtTypeEnum _$orderFilterAllAtTypeEnum_all =
    const OrderFilterAllAtTypeEnum._('all');

OrderFilterAllAtTypeEnum _$orderFilterAllAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'all':
      return _$orderFilterAllAtTypeEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderFilterAllAtTypeEnum> _$orderFilterAllAtTypeEnumValues =
    BuiltSet<OrderFilterAllAtTypeEnum>(const <OrderFilterAllAtTypeEnum>[
  _$orderFilterAllAtTypeEnum_all,
]);

Serializer<OrderFilterAllAtTypeEnum> _$orderFilterAllAtTypeEnumSerializer =
    _$OrderFilterAllAtTypeEnumSerializer();

class _$OrderFilterAllAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderFilterAllAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderFilterAllAtTypeEnum];
  @override
  final String wireName = 'OrderFilterAllAtTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderFilterAllAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderFilterAllAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderFilterAllAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderFilterAll extends OrderFilterAll {
  @override
  final OrderFilterAllAtTypeEnum atType;

  factory _$OrderFilterAll([void Function(OrderFilterAllBuilder)? updates]) =>
      (OrderFilterAllBuilder()..update(updates))._build();

  _$OrderFilterAll._({required this.atType}) : super._();
  @override
  OrderFilterAll rebuild(void Function(OrderFilterAllBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderFilterAllBuilder toBuilder() => OrderFilterAllBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderFilterAll && atType == other.atType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderFilterAll')
          ..add('atType', atType))
        .toString();
  }
}

class OrderFilterAllBuilder
    implements Builder<OrderFilterAll, OrderFilterAllBuilder> {
  _$OrderFilterAll? _$v;

  OrderFilterAllAtTypeEnum? _atType;
  OrderFilterAllAtTypeEnum? get atType => _$this._atType;
  set atType(OrderFilterAllAtTypeEnum? atType) => _$this._atType = atType;

  OrderFilterAllBuilder() {
    OrderFilterAll._defaults(this);
  }

  OrderFilterAllBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderFilterAll other) {
    _$v = other as _$OrderFilterAll;
  }

  @override
  void update(void Function(OrderFilterAllBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderFilterAll build() => _build();

  _$OrderFilterAll _build() {
    final _$result = _$v ??
        _$OrderFilterAll._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'OrderFilterAll', 'atType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
