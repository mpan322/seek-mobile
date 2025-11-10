// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activity_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderActivityFilterAtTypeEnum
    _$orderActivityFilterAtTypeEnum_byCollection =
    const OrderActivityFilterAtTypeEnum._('byCollection');

OrderActivityFilterAtTypeEnum _$orderActivityFilterAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'byCollection':
      return _$orderActivityFilterAtTypeEnum_byCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivityFilterAtTypeEnum>
    _$orderActivityFilterAtTypeEnumValues = BuiltSet<
        OrderActivityFilterAtTypeEnum>(const <OrderActivityFilterAtTypeEnum>[
  _$orderActivityFilterAtTypeEnum_byCollection,
]);

Serializer<OrderActivityFilterAtTypeEnum>
    _$orderActivityFilterAtTypeEnumSerializer =
    _$OrderActivityFilterAtTypeEnumSerializer();

class _$OrderActivityFilterAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderActivityFilterAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCollection': 'by_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_collection': 'byCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivityFilterAtTypeEnum];
  @override
  final String wireName = 'OrderActivityFilterAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OrderActivityFilterAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivityFilterAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivityFilterAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivityFilter extends OrderActivityFilter {
  @override
  final OneOf oneOf;

  factory _$OrderActivityFilter(
          [void Function(OrderActivityFilterBuilder)? updates]) =>
      (OrderActivityFilterBuilder()..update(updates))._build();

  _$OrderActivityFilter._({required this.oneOf}) : super._();
  @override
  OrderActivityFilter rebuild(
          void Function(OrderActivityFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivityFilterBuilder toBuilder() =>
      OrderActivityFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivityFilter && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderActivityFilter')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderActivityFilterBuilder
    implements Builder<OrderActivityFilter, OrderActivityFilterBuilder> {
  _$OrderActivityFilter? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderActivityFilterBuilder() {
    OrderActivityFilter._defaults(this);
  }

  OrderActivityFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivityFilter other) {
    _$v = other as _$OrderActivityFilter;
  }

  @override
  void update(void Function(OrderActivityFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivityFilter build() => _build();

  _$OrderActivityFilter _build() {
    final _$result = _$v ??
        _$OrderActivityFilter._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'OrderActivityFilter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
