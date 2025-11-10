// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ItemHistoryTypeEnum _$itemHistoryTypeEnum_ROYALTY =
    const ItemHistoryTypeEnum._('ROYALTY');
const ItemHistoryTypeEnum _$itemHistoryTypeEnum_TRANSFER =
    const ItemHistoryTypeEnum._('TRANSFER');

ItemHistoryTypeEnum _$itemHistoryTypeEnumValueOf(String name) {
  switch (name) {
    case 'ROYALTY':
      return _$itemHistoryTypeEnum_ROYALTY;
    case 'TRANSFER':
      return _$itemHistoryTypeEnum_TRANSFER;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ItemHistoryTypeEnum> _$itemHistoryTypeEnumValues =
    BuiltSet<ItemHistoryTypeEnum>(const <ItemHistoryTypeEnum>[
  _$itemHistoryTypeEnum_ROYALTY,
  _$itemHistoryTypeEnum_TRANSFER,
]);

Serializer<ItemHistoryTypeEnum> _$itemHistoryTypeEnumSerializer =
    _$ItemHistoryTypeEnumSerializer();

class _$ItemHistoryTypeEnumSerializer
    implements PrimitiveSerializer<ItemHistoryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ROYALTY': 'ROYALTY',
    'TRANSFER': 'TRANSFER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ROYALTY': 'ROYALTY',
    'TRANSFER': 'TRANSFER',
  };

  @override
  final Iterable<Type> types = const <Type>[ItemHistoryTypeEnum];
  @override
  final String wireName = 'ItemHistoryTypeEnum';

  @override
  Object serialize(Serializers serializers, ItemHistoryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ItemHistoryTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ItemHistoryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ItemHistory extends ItemHistory {
  @override
  final DateTime date;
  @override
  final String? owner;
  @override
  final String tokenId;
  @override
  final String contract;
  @override
  final String? value;
  @override
  final OneOf oneOf;

  factory _$ItemHistory([void Function(ItemHistoryBuilder)? updates]) =>
      (ItemHistoryBuilder()..update(updates))._build();

  _$ItemHistory._(
      {required this.date,
      this.owner,
      required this.tokenId,
      required this.contract,
      this.value,
      required this.oneOf})
      : super._();
  @override
  ItemHistory rebuild(void Function(ItemHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemHistoryBuilder toBuilder() => ItemHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemHistory &&
        date == other.date &&
        owner == other.owner &&
        tokenId == other.tokenId &&
        contract == other.contract &&
        value == other.value &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemHistory')
          ..add('date', date)
          ..add('owner', owner)
          ..add('tokenId', tokenId)
          ..add('contract', contract)
          ..add('value', value)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ItemHistoryBuilder implements Builder<ItemHistory, ItemHistoryBuilder> {
  _$ItemHistory? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ItemHistoryBuilder() {
    ItemHistory._defaults(this);
  }

  ItemHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _owner = $v.owner;
      _tokenId = $v.tokenId;
      _contract = $v.contract;
      _value = $v.value;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemHistory other) {
    _$v = other as _$ItemHistory;
  }

  @override
  void update(void Function(ItemHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemHistory build() => _build();

  _$ItemHistory _build() {
    final _$result = _$v ??
        _$ItemHistory._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'ItemHistory', 'date'),
          owner: owner,
          tokenId: BuiltValueNullFieldError.checkNotNull(
              tokenId, r'ItemHistory', 'tokenId'),
          contract: BuiltValueNullFieldError.checkNotNull(
              contract, r'ItemHistory', 'contract'),
          value: value,
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ItemHistory', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
