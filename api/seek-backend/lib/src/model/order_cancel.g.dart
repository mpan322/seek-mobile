// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderCancelTypeEnum _$orderCancelTypeEnum_CANCEL =
    const OrderCancelTypeEnum._('CANCEL');

OrderCancelTypeEnum _$orderCancelTypeEnumValueOf(String name) {
  switch (name) {
    case 'CANCEL':
      return _$orderCancelTypeEnum_CANCEL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderCancelTypeEnum> _$orderCancelTypeEnumValues =
    BuiltSet<OrderCancelTypeEnum>(const <OrderCancelTypeEnum>[
  _$orderCancelTypeEnum_CANCEL,
]);

Serializer<OrderCancelTypeEnum> _$orderCancelTypeEnumSerializer =
    _$OrderCancelTypeEnumSerializer();

class _$OrderCancelTypeEnumSerializer
    implements PrimitiveSerializer<OrderCancelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CANCEL': 'CANCEL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CANCEL': 'CANCEL',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderCancelTypeEnum];
  @override
  final String wireName = 'OrderCancelTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderCancelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderCancelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderCancelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderCancel extends OrderCancel {
  @override
  final OrderCancelTypeEnum type;
  @override
  final String? owner;

  factory _$OrderCancel([void Function(OrderCancelBuilder)? updates]) =>
      (OrderCancelBuilder()..update(updates))._build();

  _$OrderCancel._({required this.type, this.owner}) : super._();
  @override
  OrderCancel rebuild(void Function(OrderCancelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderCancelBuilder toBuilder() => OrderCancelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderCancel && type == other.type && owner == other.owner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderCancel')
          ..add('type', type)
          ..add('owner', owner))
        .toString();
  }
}

class OrderCancelBuilder implements Builder<OrderCancel, OrderCancelBuilder> {
  _$OrderCancel? _$v;

  OrderCancelTypeEnum? _type;
  OrderCancelTypeEnum? get type => _$this._type;
  set type(OrderCancelTypeEnum? type) => _$this._type = type;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  OrderCancelBuilder() {
    OrderCancel._defaults(this);
  }

  OrderCancelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _owner = $v.owner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderCancel other) {
    _$v = other as _$OrderCancel;
  }

  @override
  void update(void Function(OrderCancelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderCancel build() => _build();

  _$OrderCancel _build() {
    final _$result = _$v ??
        _$OrderCancel._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'OrderCancel', 'type'),
          owner: owner,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
