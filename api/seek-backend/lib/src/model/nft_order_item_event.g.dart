// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_item_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOrderItemEventTypeEnum _$nftOrderItemEventTypeEnum_UPDATE =
    const NftOrderItemEventTypeEnum._('UPDATE');
const NftOrderItemEventTypeEnum _$nftOrderItemEventTypeEnum_DELETE =
    const NftOrderItemEventTypeEnum._('DELETE');

NftOrderItemEventTypeEnum _$nftOrderItemEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftOrderItemEventTypeEnum_UPDATE;
    case 'DELETE':
      return _$nftOrderItemEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOrderItemEventTypeEnum> _$nftOrderItemEventTypeEnumValues =
    BuiltSet<NftOrderItemEventTypeEnum>(const <NftOrderItemEventTypeEnum>[
  _$nftOrderItemEventTypeEnum_UPDATE,
  _$nftOrderItemEventTypeEnum_DELETE,
]);

Serializer<NftOrderItemEventTypeEnum> _$nftOrderItemEventTypeEnumSerializer =
    _$NftOrderItemEventTypeEnumSerializer();

class _$NftOrderItemEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOrderItemEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOrderItemEventTypeEnum];
  @override
  final String wireName = 'NftOrderItemEventTypeEnum';

  @override
  Object serialize(Serializers serializers, NftOrderItemEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOrderItemEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOrderItemEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOrderItemEvent extends NftOrderItemEvent {
  @override
  final String eventId;
  @override
  final String itemId;
  @override
  final OneOf oneOf;

  factory _$NftOrderItemEvent(
          [void Function(NftOrderItemEventBuilder)? updates]) =>
      (NftOrderItemEventBuilder()..update(updates))._build();

  _$NftOrderItemEvent._(
      {required this.eventId, required this.itemId, required this.oneOf})
      : super._();
  @override
  NftOrderItemEvent rebuild(void Function(NftOrderItemEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderItemEventBuilder toBuilder() =>
      NftOrderItemEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderItemEvent &&
        eventId == other.eventId &&
        itemId == other.itemId &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOrderItemEvent')
          ..add('eventId', eventId)
          ..add('itemId', itemId)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftOrderItemEventBuilder
    implements Builder<NftOrderItemEvent, NftOrderItemEventBuilder> {
  _$NftOrderItemEvent? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftOrderItemEventBuilder() {
    NftOrderItemEvent._defaults(this);
  }

  NftOrderItemEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _itemId = $v.itemId;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderItemEvent other) {
    _$v = other as _$NftOrderItemEvent;
  }

  @override
  void update(void Function(NftOrderItemEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderItemEvent build() => _build();

  _$NftOrderItemEvent _build() {
    final _$result = _$v ??
        _$NftOrderItemEvent._(
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'NftOrderItemEvent', 'eventId'),
          itemId: BuiltValueNullFieldError.checkNotNull(
              itemId, r'NftOrderItemEvent', 'itemId'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftOrderItemEvent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
