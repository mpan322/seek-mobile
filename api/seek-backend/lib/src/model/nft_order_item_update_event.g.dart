// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_item_update_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOrderItemUpdateEventTypeEnum _$nftOrderItemUpdateEventTypeEnum_UPDATE =
    const NftOrderItemUpdateEventTypeEnum._('UPDATE');

NftOrderItemUpdateEventTypeEnum _$nftOrderItemUpdateEventTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftOrderItemUpdateEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOrderItemUpdateEventTypeEnum>
    _$nftOrderItemUpdateEventTypeEnumValues = BuiltSet<
        NftOrderItemUpdateEventTypeEnum>(const <NftOrderItemUpdateEventTypeEnum>[
  _$nftOrderItemUpdateEventTypeEnum_UPDATE,
]);

Serializer<NftOrderItemUpdateEventTypeEnum>
    _$nftOrderItemUpdateEventTypeEnumSerializer =
    _$NftOrderItemUpdateEventTypeEnumSerializer();

class _$NftOrderItemUpdateEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOrderItemUpdateEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOrderItemUpdateEventTypeEnum];
  @override
  final String wireName = 'NftOrderItemUpdateEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOrderItemUpdateEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOrderItemUpdateEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOrderItemUpdateEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOrderItemUpdateEvent extends NftOrderItemUpdateEvent {
  @override
  final NftOrderItem item;
  @override
  final NftOrderItemUpdateEventTypeEnum? type;

  factory _$NftOrderItemUpdateEvent(
          [void Function(NftOrderItemUpdateEventBuilder)? updates]) =>
      (NftOrderItemUpdateEventBuilder()..update(updates))._build();

  _$NftOrderItemUpdateEvent._({required this.item, this.type}) : super._();
  @override
  NftOrderItemUpdateEvent rebuild(
          void Function(NftOrderItemUpdateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderItemUpdateEventBuilder toBuilder() =>
      NftOrderItemUpdateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderItemUpdateEvent &&
        item == other.item &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOrderItemUpdateEvent')
          ..add('item', item)
          ..add('type', type))
        .toString();
  }
}

class NftOrderItemUpdateEventBuilder
    implements
        Builder<NftOrderItemUpdateEvent, NftOrderItemUpdateEventBuilder> {
  _$NftOrderItemUpdateEvent? _$v;

  NftOrderItemBuilder? _item;
  NftOrderItemBuilder get item => _$this._item ??= NftOrderItemBuilder();
  set item(NftOrderItemBuilder? item) => _$this._item = item;

  NftOrderItemUpdateEventTypeEnum? _type;
  NftOrderItemUpdateEventTypeEnum? get type => _$this._type;
  set type(NftOrderItemUpdateEventTypeEnum? type) => _$this._type = type;

  NftOrderItemUpdateEventBuilder() {
    NftOrderItemUpdateEvent._defaults(this);
  }

  NftOrderItemUpdateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderItemUpdateEvent other) {
    _$v = other as _$NftOrderItemUpdateEvent;
  }

  @override
  void update(void Function(NftOrderItemUpdateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderItemUpdateEvent build() => _build();

  _$NftOrderItemUpdateEvent _build() {
    _$NftOrderItemUpdateEvent _$result;
    try {
      _$result = _$v ??
          _$NftOrderItemUpdateEvent._(
            item: item.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftOrderItemUpdateEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
