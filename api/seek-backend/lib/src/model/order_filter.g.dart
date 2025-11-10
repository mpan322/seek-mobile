// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderFilterSortEnum _$orderFilterSortEnum_LAST_UPDATE =
    const OrderFilterSortEnum._('LAST_UPDATE');
const OrderFilterSortEnum _$orderFilterSortEnum_TAKE_PRICE_DESC =
    const OrderFilterSortEnum._('TAKE_PRICE_DESC');
const OrderFilterSortEnum _$orderFilterSortEnum_MAKE_PRICE_ASC =
    const OrderFilterSortEnum._('MAKE_PRICE_ASC');

OrderFilterSortEnum _$orderFilterSortEnumValueOf(String name) {
  switch (name) {
    case 'LAST_UPDATE':
      return _$orderFilterSortEnum_LAST_UPDATE;
    case 'TAKE_PRICE_DESC':
      return _$orderFilterSortEnum_TAKE_PRICE_DESC;
    case 'MAKE_PRICE_ASC':
      return _$orderFilterSortEnum_MAKE_PRICE_ASC;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderFilterSortEnum> _$orderFilterSortEnumValues =
    BuiltSet<OrderFilterSortEnum>(const <OrderFilterSortEnum>[
  _$orderFilterSortEnum_LAST_UPDATE,
  _$orderFilterSortEnum_TAKE_PRICE_DESC,
  _$orderFilterSortEnum_MAKE_PRICE_ASC,
]);

const OrderFilterAtTypeEnum _$orderFilterAtTypeEnum_bidByMaker =
    const OrderFilterAtTypeEnum._('bidByMaker');

OrderFilterAtTypeEnum _$orderFilterAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'bidByMaker':
      return _$orderFilterAtTypeEnum_bidByMaker;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderFilterAtTypeEnum> _$orderFilterAtTypeEnumValues =
    BuiltSet<OrderFilterAtTypeEnum>(const <OrderFilterAtTypeEnum>[
  _$orderFilterAtTypeEnum_bidByMaker,
]);

Serializer<OrderFilterSortEnum> _$orderFilterSortEnumSerializer =
    _$OrderFilterSortEnumSerializer();
Serializer<OrderFilterAtTypeEnum> _$orderFilterAtTypeEnumSerializer =
    _$OrderFilterAtTypeEnumSerializer();

class _$OrderFilterSortEnumSerializer
    implements PrimitiveSerializer<OrderFilterSortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LAST_UPDATE': 'LAST_UPDATE',
    'TAKE_PRICE_DESC': 'TAKE_PRICE_DESC',
    'MAKE_PRICE_ASC': 'MAKE_PRICE_ASC',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LAST_UPDATE': 'LAST_UPDATE',
    'TAKE_PRICE_DESC': 'TAKE_PRICE_DESC',
    'MAKE_PRICE_ASC': 'MAKE_PRICE_ASC',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderFilterSortEnum];
  @override
  final String wireName = 'OrderFilterSortEnum';

  @override
  Object serialize(Serializers serializers, OrderFilterSortEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderFilterSortEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderFilterSortEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderFilterAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderFilterAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bidByMaker': 'bid_by_maker',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bid_by_maker': 'bidByMaker',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderFilterAtTypeEnum];
  @override
  final String wireName = 'OrderFilterAtTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderFilterAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderFilterAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderFilterAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderFilter extends OrderFilter {
  @override
  final String? origin;
  @override
  final OrderFilterSortEnum sort;
  @override
  final Platform? platform;
  @override
  final OneOf oneOf;

  factory _$OrderFilter([void Function(OrderFilterBuilder)? updates]) =>
      (OrderFilterBuilder()..update(updates))._build();

  _$OrderFilter._(
      {this.origin, required this.sort, this.platform, required this.oneOf})
      : super._();
  @override
  OrderFilter rebuild(void Function(OrderFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderFilterBuilder toBuilder() => OrderFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderFilter &&
        origin == other.origin &&
        sort == other.sort &&
        platform == other.platform &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderFilter')
          ..add('origin', origin)
          ..add('sort', sort)
          ..add('platform', platform)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderFilterBuilder implements Builder<OrderFilter, OrderFilterBuilder> {
  _$OrderFilter? _$v;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  OrderFilterSortEnum? _sort;
  OrderFilterSortEnum? get sort => _$this._sort;
  set sort(OrderFilterSortEnum? sort) => _$this._sort = sort;

  Platform? _platform;
  Platform? get platform => _$this._platform;
  set platform(Platform? platform) => _$this._platform = platform;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderFilterBuilder() {
    OrderFilter._defaults(this);
  }

  OrderFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _origin = $v.origin;
      _sort = $v.sort;
      _platform = $v.platform;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderFilter other) {
    _$v = other as _$OrderFilter;
  }

  @override
  void update(void Function(OrderFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderFilter build() => _build();

  _$OrderFilter _build() {
    final _$result = _$v ??
        _$OrderFilter._(
          origin: origin,
          sort: BuiltValueNullFieldError.checkNotNull(
              sort, r'OrderFilter', 'sort'),
          platform: platform,
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'OrderFilter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
