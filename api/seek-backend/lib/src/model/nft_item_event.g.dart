// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftItemEventTypeEnum _$nftItemEventTypeEnum_UPDATE =
    const NftItemEventTypeEnum._('UPDATE');
const NftItemEventTypeEnum _$nftItemEventTypeEnum_DELETE =
    const NftItemEventTypeEnum._('DELETE');

NftItemEventTypeEnum _$nftItemEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftItemEventTypeEnum_UPDATE;
    case 'DELETE':
      return _$nftItemEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftItemEventTypeEnum> _$nftItemEventTypeEnumValues =
    BuiltSet<NftItemEventTypeEnum>(const <NftItemEventTypeEnum>[
  _$nftItemEventTypeEnum_UPDATE,
  _$nftItemEventTypeEnum_DELETE,
]);

Serializer<NftItemEventTypeEnum> _$nftItemEventTypeEnumSerializer =
    _$NftItemEventTypeEnumSerializer();

class _$NftItemEventTypeEnumSerializer
    implements PrimitiveSerializer<NftItemEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftItemEventTypeEnum];
  @override
  final String wireName = 'NftItemEventTypeEnum';

  @override
  Object serialize(Serializers serializers, NftItemEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftItemEventTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftItemEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftItemEvent extends NftItemEvent {
  @override
  final String eventId;
  @override
  final String itemId;
  @override
  final OneOf oneOf;

  factory _$NftItemEvent([void Function(NftItemEventBuilder)? updates]) =>
      (NftItemEventBuilder()..update(updates))._build();

  _$NftItemEvent._(
      {required this.eventId, required this.itemId, required this.oneOf})
      : super._();
  @override
  NftItemEvent rebuild(void Function(NftItemEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemEventBuilder toBuilder() => NftItemEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemEvent &&
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
    return (newBuiltValueToStringHelper(r'NftItemEvent')
          ..add('eventId', eventId)
          ..add('itemId', itemId)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftItemEventBuilder
    implements Builder<NftItemEvent, NftItemEventBuilder> {
  _$NftItemEvent? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftItemEventBuilder() {
    NftItemEvent._defaults(this);
  }

  NftItemEventBuilder get _$this {
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
  void replace(NftItemEvent other) {
    _$v = other as _$NftItemEvent;
  }

  @override
  void update(void Function(NftItemEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemEvent build() => _build();

  _$NftItemEvent _build() {
    final _$result = _$v ??
        _$NftItemEvent._(
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'NftItemEvent', 'eventId'),
          itemId: BuiltValueNullFieldError.checkNotNull(
              itemId, r'NftItemEvent', 'itemId'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftItemEvent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
