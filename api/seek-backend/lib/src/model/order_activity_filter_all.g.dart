// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activity_filter_all.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderActivityFilterAllAtTypeEnum _$orderActivityFilterAllAtTypeEnum_all =
    const OrderActivityFilterAllAtTypeEnum._('all');

OrderActivityFilterAllAtTypeEnum _$orderActivityFilterAllAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'all':
      return _$orderActivityFilterAllAtTypeEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivityFilterAllAtTypeEnum>
    _$orderActivityFilterAllAtTypeEnumValues = BuiltSet<
        OrderActivityFilterAllAtTypeEnum>(const <OrderActivityFilterAllAtTypeEnum>[
  _$orderActivityFilterAllAtTypeEnum_all,
]);

Serializer<OrderActivityFilterAllAtTypeEnum>
    _$orderActivityFilterAllAtTypeEnumSerializer =
    _$OrderActivityFilterAllAtTypeEnumSerializer();

class _$OrderActivityFilterAllAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderActivityFilterAllAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivityFilterAllAtTypeEnum];
  @override
  final String wireName = 'OrderActivityFilterAllAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OrderActivityFilterAllAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivityFilterAllAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivityFilterAllAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivityFilterAll extends OrderActivityFilterAll {
  @override
  final OrderActivityFilterAllAtTypeEnum atType;
  @override
  final BuiltList<OrderActivityFilterByCollectionTypes> types;

  factory _$OrderActivityFilterAll(
          [void Function(OrderActivityFilterAllBuilder)? updates]) =>
      (OrderActivityFilterAllBuilder()..update(updates))._build();

  _$OrderActivityFilterAll._({required this.atType, required this.types})
      : super._();
  @override
  OrderActivityFilterAll rebuild(
          void Function(OrderActivityFilterAllBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivityFilterAllBuilder toBuilder() =>
      OrderActivityFilterAllBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivityFilterAll &&
        atType == other.atType &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderActivityFilterAll')
          ..add('atType', atType)
          ..add('types', types))
        .toString();
  }
}

class OrderActivityFilterAllBuilder
    implements Builder<OrderActivityFilterAll, OrderActivityFilterAllBuilder> {
  _$OrderActivityFilterAll? _$v;

  OrderActivityFilterAllAtTypeEnum? _atType;
  OrderActivityFilterAllAtTypeEnum? get atType => _$this._atType;
  set atType(OrderActivityFilterAllAtTypeEnum? atType) =>
      _$this._atType = atType;

  ListBuilder<OrderActivityFilterByCollectionTypes>? _types;
  ListBuilder<OrderActivityFilterByCollectionTypes> get types =>
      _$this._types ??= ListBuilder<OrderActivityFilterByCollectionTypes>();
  set types(ListBuilder<OrderActivityFilterByCollectionTypes>? types) =>
      _$this._types = types;

  OrderActivityFilterAllBuilder() {
    OrderActivityFilterAll._defaults(this);
  }

  OrderActivityFilterAllBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _types = $v.types.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivityFilterAll other) {
    _$v = other as _$OrderActivityFilterAll;
  }

  @override
  void update(void Function(OrderActivityFilterAllBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivityFilterAll build() => _build();

  _$OrderActivityFilterAll _build() {
    _$OrderActivityFilterAll _$result;
    try {
      _$result = _$v ??
          _$OrderActivityFilterAll._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'OrderActivityFilterAll', 'atType'),
            types: types.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderActivityFilterAll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
