// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderActivitySource_Enum _$orderActivitySourceEnum_RARIBLE =
    const OrderActivitySource_Enum._('RARIBLE');
const OrderActivitySource_Enum _$orderActivitySourceEnum_OPEN_SEA =
    const OrderActivitySource_Enum._('OPEN_SEA');

OrderActivitySource_Enum _$orderActivitySourceEnumValueOf(String name) {
  switch (name) {
    case 'RARIBLE':
      return _$orderActivitySourceEnum_RARIBLE;
    case 'OPEN_SEA':
      return _$orderActivitySourceEnum_OPEN_SEA;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivitySource_Enum> _$orderActivitySourceEnumValues =
    BuiltSet<OrderActivitySource_Enum>(const <OrderActivitySource_Enum>[
  _$orderActivitySourceEnum_RARIBLE,
  _$orderActivitySourceEnum_OPEN_SEA,
]);

const OrderActivityAtTypeEnum _$orderActivityAtTypeEnum_cancelList =
    const OrderActivityAtTypeEnum._('cancelList');

OrderActivityAtTypeEnum _$orderActivityAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'cancelList':
      return _$orderActivityAtTypeEnum_cancelList;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivityAtTypeEnum> _$orderActivityAtTypeEnumValues =
    BuiltSet<OrderActivityAtTypeEnum>(const <OrderActivityAtTypeEnum>[
  _$orderActivityAtTypeEnum_cancelList,
]);

Serializer<OrderActivitySource_Enum> _$orderActivitySourceEnumSerializer =
    _$OrderActivitySource_EnumSerializer();
Serializer<OrderActivityAtTypeEnum> _$orderActivityAtTypeEnumSerializer =
    _$OrderActivityAtTypeEnumSerializer();

class _$OrderActivitySource_EnumSerializer
    implements PrimitiveSerializer<OrderActivitySource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RARIBLE': 'RARIBLE',
    'OPEN_SEA': 'OPEN_SEA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE': 'RARIBLE',
    'OPEN_SEA': 'OPEN_SEA',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivitySource_Enum];
  @override
  final String wireName = 'OrderActivitySource_Enum';

  @override
  Object serialize(Serializers serializers, OrderActivitySource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivitySource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivitySource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivityAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderActivityAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cancelList': 'cancel_list',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cancel_list': 'cancelList',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivityAtTypeEnum];
  @override
  final String wireName = 'OrderActivityAtTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderActivityAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivityAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivityAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivity extends OrderActivity {
  @override
  final DateTime date;
  @override
  final OrderActivitySource_Enum source_;
  @override
  final String id;
  @override
  final OneOf oneOf;

  factory _$OrderActivity([void Function(OrderActivityBuilder)? updates]) =>
      (OrderActivityBuilder()..update(updates))._build();

  _$OrderActivity._(
      {required this.date,
      required this.source_,
      required this.id,
      required this.oneOf})
      : super._();
  @override
  OrderActivity rebuild(void Function(OrderActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivityBuilder toBuilder() => OrderActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivity &&
        date == other.date &&
        source_ == other.source_ &&
        id == other.id &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderActivity')
          ..add('date', date)
          ..add('source_', source_)
          ..add('id', id)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderActivityBuilder
    implements Builder<OrderActivity, OrderActivityBuilder> {
  _$OrderActivity? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  OrderActivitySource_Enum? _source_;
  OrderActivitySource_Enum? get source_ => _$this._source_;
  set source_(OrderActivitySource_Enum? source_) => _$this._source_ = source_;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderActivityBuilder() {
    OrderActivity._defaults(this);
  }

  OrderActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _source_ = $v.source_;
      _id = $v.id;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivity other) {
    _$v = other as _$OrderActivity;
  }

  @override
  void update(void Function(OrderActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivity build() => _build();

  _$OrderActivity _build() {
    final _$result = _$v ??
        _$OrderActivity._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'OrderActivity', 'date'),
          source_: BuiltValueNullFieldError.checkNotNull(
              source_, r'OrderActivity', 'source_'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'OrderActivity', 'id'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'OrderActivity', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
