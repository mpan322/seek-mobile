// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_ownership_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOrderOwnershipEventTypeEnum _$nftOrderOwnershipEventTypeEnum_UPDATE =
    const NftOrderOwnershipEventTypeEnum._('UPDATE');
const NftOrderOwnershipEventTypeEnum _$nftOrderOwnershipEventTypeEnum_DELETE =
    const NftOrderOwnershipEventTypeEnum._('DELETE');

NftOrderOwnershipEventTypeEnum _$nftOrderOwnershipEventTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftOrderOwnershipEventTypeEnum_UPDATE;
    case 'DELETE':
      return _$nftOrderOwnershipEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOrderOwnershipEventTypeEnum>
    _$nftOrderOwnershipEventTypeEnumValues = BuiltSet<
        NftOrderOwnershipEventTypeEnum>(const <NftOrderOwnershipEventTypeEnum>[
  _$nftOrderOwnershipEventTypeEnum_UPDATE,
  _$nftOrderOwnershipEventTypeEnum_DELETE,
]);

Serializer<NftOrderOwnershipEventTypeEnum>
    _$nftOrderOwnershipEventTypeEnumSerializer =
    _$NftOrderOwnershipEventTypeEnumSerializer();

class _$NftOrderOwnershipEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOrderOwnershipEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOrderOwnershipEventTypeEnum];
  @override
  final String wireName = 'NftOrderOwnershipEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOrderOwnershipEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOrderOwnershipEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOrderOwnershipEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOrderOwnershipEvent extends NftOrderOwnershipEvent {
  @override
  final String ownershipId;
  @override
  final String eventId;
  @override
  final OneOf oneOf;

  factory _$NftOrderOwnershipEvent(
          [void Function(NftOrderOwnershipEventBuilder)? updates]) =>
      (NftOrderOwnershipEventBuilder()..update(updates))._build();

  _$NftOrderOwnershipEvent._(
      {required this.ownershipId, required this.eventId, required this.oneOf})
      : super._();
  @override
  NftOrderOwnershipEvent rebuild(
          void Function(NftOrderOwnershipEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderOwnershipEventBuilder toBuilder() =>
      NftOrderOwnershipEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderOwnershipEvent &&
        ownershipId == other.ownershipId &&
        eventId == other.eventId &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownershipId.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOrderOwnershipEvent')
          ..add('ownershipId', ownershipId)
          ..add('eventId', eventId)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftOrderOwnershipEventBuilder
    implements Builder<NftOrderOwnershipEvent, NftOrderOwnershipEventBuilder> {
  _$NftOrderOwnershipEvent? _$v;

  String? _ownershipId;
  String? get ownershipId => _$this._ownershipId;
  set ownershipId(String? ownershipId) => _$this._ownershipId = ownershipId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftOrderOwnershipEventBuilder() {
    NftOrderOwnershipEvent._defaults(this);
  }

  NftOrderOwnershipEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownershipId = $v.ownershipId;
      _eventId = $v.eventId;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderOwnershipEvent other) {
    _$v = other as _$NftOrderOwnershipEvent;
  }

  @override
  void update(void Function(NftOrderOwnershipEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderOwnershipEvent build() => _build();

  _$NftOrderOwnershipEvent _build() {
    final _$result = _$v ??
        _$NftOrderOwnershipEvent._(
          ownershipId: BuiltValueNullFieldError.checkNotNull(
              ownershipId, r'NftOrderOwnershipEvent', 'ownershipId'),
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'NftOrderOwnershipEvent', 'eventId'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftOrderOwnershipEvent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
