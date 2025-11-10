// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_buy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ItemBuyTypeEnum _$itemBuyTypeEnum_BUY = const ItemBuyTypeEnum._('BUY');

ItemBuyTypeEnum _$itemBuyTypeEnumValueOf(String name) {
  switch (name) {
    case 'BUY':
      return _$itemBuyTypeEnum_BUY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ItemBuyTypeEnum> _$itemBuyTypeEnumValues =
    BuiltSet<ItemBuyTypeEnum>(const <ItemBuyTypeEnum>[
  _$itemBuyTypeEnum_BUY,
]);

Serializer<ItemBuyTypeEnum> _$itemBuyTypeEnumSerializer =
    _$ItemBuyTypeEnumSerializer();

class _$ItemBuyTypeEnumSerializer
    implements PrimitiveSerializer<ItemBuyTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BUY': 'BUY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BUY': 'BUY',
  };

  @override
  final Iterable<Type> types = const <Type>[ItemBuyTypeEnum];
  @override
  final String wireName = 'ItemBuyTypeEnum';

  @override
  Object serialize(Serializers serializers, ItemBuyTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ItemBuyTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ItemBuyTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ItemBuy extends ItemBuy {
  @override
  final String fill;
  @override
  final ItemBuyTypeEnum? type;
  @override
  final String? buyer;

  factory _$ItemBuy([void Function(ItemBuyBuilder)? updates]) =>
      (ItemBuyBuilder()..update(updates))._build();

  _$ItemBuy._({required this.fill, this.type, this.buyer}) : super._();
  @override
  ItemBuy rebuild(void Function(ItemBuyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemBuyBuilder toBuilder() => ItemBuyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemBuy &&
        fill == other.fill &&
        type == other.type &&
        buyer == other.buyer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fill.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, buyer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemBuy')
          ..add('fill', fill)
          ..add('type', type)
          ..add('buyer', buyer))
        .toString();
  }
}

class ItemBuyBuilder implements Builder<ItemBuy, ItemBuyBuilder> {
  _$ItemBuy? _$v;

  String? _fill;
  String? get fill => _$this._fill;
  set fill(String? fill) => _$this._fill = fill;

  ItemBuyTypeEnum? _type;
  ItemBuyTypeEnum? get type => _$this._type;
  set type(ItemBuyTypeEnum? type) => _$this._type = type;

  String? _buyer;
  String? get buyer => _$this._buyer;
  set buyer(String? buyer) => _$this._buyer = buyer;

  ItemBuyBuilder() {
    ItemBuy._defaults(this);
  }

  ItemBuyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fill = $v.fill;
      _type = $v.type;
      _buyer = $v.buyer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemBuy other) {
    _$v = other as _$ItemBuy;
  }

  @override
  void update(void Function(ItemBuyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemBuy build() => _build();

  _$ItemBuy _build() {
    final _$result = _$v ??
        _$ItemBuy._(
          fill: BuiltValueNullFieldError.checkNotNull(fill, r'ItemBuy', 'fill'),
          type: type,
          buyer: buyer,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
