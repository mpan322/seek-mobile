// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderFormTypeEnum _$orderFormTypeEnum_rARIBLEV1 =
    const OrderFormTypeEnum._('rARIBLEV1');
const OrderFormTypeEnum _$orderFormTypeEnum_rARIBLEV2 =
    const OrderFormTypeEnum._('rARIBLEV2');
const OrderFormTypeEnum _$orderFormTypeEnum_oPENSEAV1 =
    const OrderFormTypeEnum._('oPENSEAV1');

OrderFormTypeEnum _$orderFormTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV1':
      return _$orderFormTypeEnum_rARIBLEV1;
    case 'rARIBLEV2':
      return _$orderFormTypeEnum_rARIBLEV2;
    case 'oPENSEAV1':
      return _$orderFormTypeEnum_oPENSEAV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderFormTypeEnum> _$orderFormTypeEnumValues =
    BuiltSet<OrderFormTypeEnum>(const <OrderFormTypeEnum>[
  _$orderFormTypeEnum_rARIBLEV1,
  _$orderFormTypeEnum_rARIBLEV2,
  _$orderFormTypeEnum_oPENSEAV1,
]);

Serializer<OrderFormTypeEnum> _$orderFormTypeEnumSerializer =
    _$OrderFormTypeEnumSerializer();

class _$OrderFormTypeEnumSerializer
    implements PrimitiveSerializer<OrderFormTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rARIBLEV1': 'RARIBLE_V1',
    'rARIBLEV2': 'RARIBLE_V2',
    'oPENSEAV1': 'OPEN_SEA_V1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE_V1': 'rARIBLEV1',
    'RARIBLE_V2': 'rARIBLEV2',
    'OPEN_SEA_V1': 'oPENSEAV1',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderFormTypeEnum];
  @override
  final String wireName = 'OrderFormTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderFormTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderFormTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderFormTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderForm extends OrderForm {
  @override
  final Asset take;
  @override
  final String salt;
  @override
  final String? signature;
  @override
  final int? start;
  @override
  final String maker;
  @override
  final int? end;
  @override
  final String? taker;
  @override
  final Asset make;
  @override
  final OneOf oneOf;

  factory _$OrderForm([void Function(OrderFormBuilder)? updates]) =>
      (OrderFormBuilder()..update(updates))._build();

  _$OrderForm._(
      {required this.take,
      required this.salt,
      this.signature,
      this.start,
      required this.maker,
      this.end,
      this.taker,
      required this.make,
      required this.oneOf})
      : super._();
  @override
  OrderForm rebuild(void Function(OrderFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderFormBuilder toBuilder() => OrderFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderForm &&
        take == other.take &&
        salt == other.salt &&
        signature == other.signature &&
        start == other.start &&
        maker == other.maker &&
        end == other.end &&
        taker == other.taker &&
        make == other.make &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, salt.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, taker.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderForm')
          ..add('take', take)
          ..add('salt', salt)
          ..add('signature', signature)
          ..add('start', start)
          ..add('maker', maker)
          ..add('end', end)
          ..add('taker', taker)
          ..add('make', make)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderFormBuilder implements Builder<OrderForm, OrderFormBuilder> {
  _$OrderForm? _$v;

  AssetBuilder? _take;
  AssetBuilder get take => _$this._take ??= AssetBuilder();
  set take(AssetBuilder? take) => _$this._take = take;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  int? _start;
  int? get start => _$this._start;
  set start(int? start) => _$this._start = start;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  int? _end;
  int? get end => _$this._end;
  set end(int? end) => _$this._end = end;

  String? _taker;
  String? get taker => _$this._taker;
  set taker(String? taker) => _$this._taker = taker;

  AssetBuilder? _make;
  AssetBuilder get make => _$this._make ??= AssetBuilder();
  set make(AssetBuilder? make) => _$this._make = make;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderFormBuilder() {
    OrderForm._defaults(this);
  }

  OrderFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _take = $v.take.toBuilder();
      _salt = $v.salt;
      _signature = $v.signature;
      _start = $v.start;
      _maker = $v.maker;
      _end = $v.end;
      _taker = $v.taker;
      _make = $v.make.toBuilder();
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderForm other) {
    _$v = other as _$OrderForm;
  }

  @override
  void update(void Function(OrderFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderForm build() => _build();

  _$OrderForm _build() {
    _$OrderForm _$result;
    try {
      _$result = _$v ??
          _$OrderForm._(
            take: take.build(),
            salt: BuiltValueNullFieldError.checkNotNull(
                salt, r'OrderForm', 'salt'),
            signature: signature,
            start: start,
            maker: BuiltValueNullFieldError.checkNotNull(
                maker, r'OrderForm', 'maker'),
            end: end,
            taker: taker,
            make: make.build(),
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'OrderForm', 'oneOf'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'take';
        take.build();

        _$failedField = 'make';
        make.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderForm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
