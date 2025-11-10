// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_ownership_update_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOrderOwnershipUpdateEventTypeEnum
    _$nftOrderOwnershipUpdateEventTypeEnum_UPDATE =
    const NftOrderOwnershipUpdateEventTypeEnum._('UPDATE');

NftOrderOwnershipUpdateEventTypeEnum
    _$nftOrderOwnershipUpdateEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftOrderOwnershipUpdateEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOrderOwnershipUpdateEventTypeEnum>
    _$nftOrderOwnershipUpdateEventTypeEnumValues = BuiltSet<
        NftOrderOwnershipUpdateEventTypeEnum>(const <NftOrderOwnershipUpdateEventTypeEnum>[
  _$nftOrderOwnershipUpdateEventTypeEnum_UPDATE,
]);

Serializer<NftOrderOwnershipUpdateEventTypeEnum>
    _$nftOrderOwnershipUpdateEventTypeEnumSerializer =
    _$NftOrderOwnershipUpdateEventTypeEnumSerializer();

class _$NftOrderOwnershipUpdateEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOrderOwnershipUpdateEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NftOrderOwnershipUpdateEventTypeEnum
  ];
  @override
  final String wireName = 'NftOrderOwnershipUpdateEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOrderOwnershipUpdateEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOrderOwnershipUpdateEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOrderOwnershipUpdateEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOrderOwnershipUpdateEvent extends NftOrderOwnershipUpdateEvent {
  @override
  final NftOrderOwnership ownership;
  @override
  final NftOrderOwnershipUpdateEventTypeEnum? type;

  factory _$NftOrderOwnershipUpdateEvent(
          [void Function(NftOrderOwnershipUpdateEventBuilder)? updates]) =>
      (NftOrderOwnershipUpdateEventBuilder()..update(updates))._build();

  _$NftOrderOwnershipUpdateEvent._({required this.ownership, this.type})
      : super._();
  @override
  NftOrderOwnershipUpdateEvent rebuild(
          void Function(NftOrderOwnershipUpdateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderOwnershipUpdateEventBuilder toBuilder() =>
      NftOrderOwnershipUpdateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderOwnershipUpdateEvent &&
        ownership == other.ownership &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownership.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOrderOwnershipUpdateEvent')
          ..add('ownership', ownership)
          ..add('type', type))
        .toString();
  }
}

class NftOrderOwnershipUpdateEventBuilder
    implements
        Builder<NftOrderOwnershipUpdateEvent,
            NftOrderOwnershipUpdateEventBuilder> {
  _$NftOrderOwnershipUpdateEvent? _$v;

  NftOrderOwnershipBuilder? _ownership;
  NftOrderOwnershipBuilder get ownership =>
      _$this._ownership ??= NftOrderOwnershipBuilder();
  set ownership(NftOrderOwnershipBuilder? ownership) =>
      _$this._ownership = ownership;

  NftOrderOwnershipUpdateEventTypeEnum? _type;
  NftOrderOwnershipUpdateEventTypeEnum? get type => _$this._type;
  set type(NftOrderOwnershipUpdateEventTypeEnum? type) => _$this._type = type;

  NftOrderOwnershipUpdateEventBuilder() {
    NftOrderOwnershipUpdateEvent._defaults(this);
  }

  NftOrderOwnershipUpdateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownership = $v.ownership.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderOwnershipUpdateEvent other) {
    _$v = other as _$NftOrderOwnershipUpdateEvent;
  }

  @override
  void update(void Function(NftOrderOwnershipUpdateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderOwnershipUpdateEvent build() => _build();

  _$NftOrderOwnershipUpdateEvent _build() {
    _$NftOrderOwnershipUpdateEvent _$result;
    try {
      _$result = _$v ??
          _$NftOrderOwnershipUpdateEvent._(
            ownership: ownership.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownership';
        ownership.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftOrderOwnershipUpdateEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
