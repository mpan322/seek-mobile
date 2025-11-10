// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownership_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOwnershipEventTypeEnum _$nftOwnershipEventTypeEnum_UPDATE =
    const NftOwnershipEventTypeEnum._('UPDATE');
const NftOwnershipEventTypeEnum _$nftOwnershipEventTypeEnum_DELETE =
    const NftOwnershipEventTypeEnum._('DELETE');

NftOwnershipEventTypeEnum _$nftOwnershipEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftOwnershipEventTypeEnum_UPDATE;
    case 'DELETE':
      return _$nftOwnershipEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipEventTypeEnum> _$nftOwnershipEventTypeEnumValues =
    BuiltSet<NftOwnershipEventTypeEnum>(const <NftOwnershipEventTypeEnum>[
  _$nftOwnershipEventTypeEnum_UPDATE,
  _$nftOwnershipEventTypeEnum_DELETE,
]);

Serializer<NftOwnershipEventTypeEnum> _$nftOwnershipEventTypeEnumSerializer =
    _$NftOwnershipEventTypeEnumSerializer();

class _$NftOwnershipEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOwnershipEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOwnershipEventTypeEnum];
  @override
  final String wireName = 'NftOwnershipEventTypeEnum';

  @override
  Object serialize(Serializers serializers, NftOwnershipEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipEvent extends NftOwnershipEvent {
  @override
  final String ownershipId;
  @override
  final String eventId;
  @override
  final OneOf oneOf;

  factory _$NftOwnershipEvent(
          [void Function(NftOwnershipEventBuilder)? updates]) =>
      (NftOwnershipEventBuilder()..update(updates))._build();

  _$NftOwnershipEvent._(
      {required this.ownershipId, required this.eventId, required this.oneOf})
      : super._();
  @override
  NftOwnershipEvent rebuild(void Function(NftOwnershipEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipEventBuilder toBuilder() =>
      NftOwnershipEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnershipEvent &&
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
    return (newBuiltValueToStringHelper(r'NftOwnershipEvent')
          ..add('ownershipId', ownershipId)
          ..add('eventId', eventId)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftOwnershipEventBuilder
    implements Builder<NftOwnershipEvent, NftOwnershipEventBuilder> {
  _$NftOwnershipEvent? _$v;

  String? _ownershipId;
  String? get ownershipId => _$this._ownershipId;
  set ownershipId(String? ownershipId) => _$this._ownershipId = ownershipId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftOwnershipEventBuilder() {
    NftOwnershipEvent._defaults(this);
  }

  NftOwnershipEventBuilder get _$this {
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
  void replace(NftOwnershipEvent other) {
    _$v = other as _$NftOwnershipEvent;
  }

  @override
  void update(void Function(NftOwnershipEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnershipEvent build() => _build();

  _$NftOwnershipEvent _build() {
    final _$result = _$v ??
        _$NftOwnershipEvent._(
          ownershipId: BuiltValueNullFieldError.checkNotNull(
              ownershipId, r'NftOwnershipEvent', 'ownershipId'),
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'NftOwnershipEvent', 'eventId'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftOwnershipEvent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
