// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_royalty.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ItemRoyaltyTypeEnum _$itemRoyaltyTypeEnum_ROYALTY =
    const ItemRoyaltyTypeEnum._('ROYALTY');

ItemRoyaltyTypeEnum _$itemRoyaltyTypeEnumValueOf(String name) {
  switch (name) {
    case 'ROYALTY':
      return _$itemRoyaltyTypeEnum_ROYALTY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ItemRoyaltyTypeEnum> _$itemRoyaltyTypeEnumValues =
    BuiltSet<ItemRoyaltyTypeEnum>(const <ItemRoyaltyTypeEnum>[
  _$itemRoyaltyTypeEnum_ROYALTY,
]);

Serializer<ItemRoyaltyTypeEnum> _$itemRoyaltyTypeEnumSerializer =
    _$ItemRoyaltyTypeEnumSerializer();

class _$ItemRoyaltyTypeEnumSerializer
    implements PrimitiveSerializer<ItemRoyaltyTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ROYALTY': 'ROYALTY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ROYALTY': 'ROYALTY',
  };

  @override
  final Iterable<Type> types = const <Type>[ItemRoyaltyTypeEnum];
  @override
  final String wireName = 'ItemRoyaltyTypeEnum';

  @override
  Object serialize(Serializers serializers, ItemRoyaltyTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ItemRoyaltyTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ItemRoyaltyTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ItemRoyalty extends ItemRoyalty {
  @override
  final ItemRoyaltyTypeEnum type;
  @override
  final BuiltList<ModelPart> royalties;

  factory _$ItemRoyalty([void Function(ItemRoyaltyBuilder)? updates]) =>
      (ItemRoyaltyBuilder()..update(updates))._build();

  _$ItemRoyalty._({required this.type, required this.royalties}) : super._();
  @override
  ItemRoyalty rebuild(void Function(ItemRoyaltyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemRoyaltyBuilder toBuilder() => ItemRoyaltyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemRoyalty &&
        type == other.type &&
        royalties == other.royalties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, royalties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemRoyalty')
          ..add('type', type)
          ..add('royalties', royalties))
        .toString();
  }
}

class ItemRoyaltyBuilder implements Builder<ItemRoyalty, ItemRoyaltyBuilder> {
  _$ItemRoyalty? _$v;

  ItemRoyaltyTypeEnum? _type;
  ItemRoyaltyTypeEnum? get type => _$this._type;
  set type(ItemRoyaltyTypeEnum? type) => _$this._type = type;

  ListBuilder<ModelPart>? _royalties;
  ListBuilder<ModelPart> get royalties =>
      _$this._royalties ??= ListBuilder<ModelPart>();
  set royalties(ListBuilder<ModelPart>? royalties) =>
      _$this._royalties = royalties;

  ItemRoyaltyBuilder() {
    ItemRoyalty._defaults(this);
  }

  ItemRoyaltyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _royalties = $v.royalties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemRoyalty other) {
    _$v = other as _$ItemRoyalty;
  }

  @override
  void update(void Function(ItemRoyaltyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemRoyalty build() => _build();

  _$ItemRoyalty _build() {
    _$ItemRoyalty _$result;
    try {
      _$result = _$v ??
          _$ItemRoyalty._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ItemRoyalty', 'type'),
            royalties: royalties.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'royalties';
        royalties.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ItemRoyalty', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
