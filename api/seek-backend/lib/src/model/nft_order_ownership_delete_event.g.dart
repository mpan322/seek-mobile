// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_ownership_delete_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOrderOwnershipDeleteEventTypeEnum
    _$nftOrderOwnershipDeleteEventTypeEnum_DELETE =
    const NftOrderOwnershipDeleteEventTypeEnum._('DELETE');

NftOrderOwnershipDeleteEventTypeEnum
    _$nftOrderOwnershipDeleteEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'DELETE':
      return _$nftOrderOwnershipDeleteEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOrderOwnershipDeleteEventTypeEnum>
    _$nftOrderOwnershipDeleteEventTypeEnumValues = BuiltSet<
        NftOrderOwnershipDeleteEventTypeEnum>(const <NftOrderOwnershipDeleteEventTypeEnum>[
  _$nftOrderOwnershipDeleteEventTypeEnum_DELETE,
]);

Serializer<NftOrderOwnershipDeleteEventTypeEnum>
    _$nftOrderOwnershipDeleteEventTypeEnumSerializer =
    _$NftOrderOwnershipDeleteEventTypeEnumSerializer();

class _$NftOrderOwnershipDeleteEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOrderOwnershipDeleteEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NftOrderOwnershipDeleteEventTypeEnum
  ];
  @override
  final String wireName = 'NftOrderOwnershipDeleteEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOrderOwnershipDeleteEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOrderOwnershipDeleteEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOrderOwnershipDeleteEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOrderOwnershipDeleteEvent extends NftOrderOwnershipDeleteEvent {
  @override
  final NftOrderDeletedOwnership ownership;
  @override
  final NftOrderOwnershipDeleteEventTypeEnum? type;

  factory _$NftOrderOwnershipDeleteEvent(
          [void Function(NftOrderOwnershipDeleteEventBuilder)? updates]) =>
      (NftOrderOwnershipDeleteEventBuilder()..update(updates))._build();

  _$NftOrderOwnershipDeleteEvent._({required this.ownership, this.type})
      : super._();
  @override
  NftOrderOwnershipDeleteEvent rebuild(
          void Function(NftOrderOwnershipDeleteEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderOwnershipDeleteEventBuilder toBuilder() =>
      NftOrderOwnershipDeleteEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderOwnershipDeleteEvent &&
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
    return (newBuiltValueToStringHelper(r'NftOrderOwnershipDeleteEvent')
          ..add('ownership', ownership)
          ..add('type', type))
        .toString();
  }
}

class NftOrderOwnershipDeleteEventBuilder
    implements
        Builder<NftOrderOwnershipDeleteEvent,
            NftOrderOwnershipDeleteEventBuilder> {
  _$NftOrderOwnershipDeleteEvent? _$v;

  NftOrderDeletedOwnershipBuilder? _ownership;
  NftOrderDeletedOwnershipBuilder get ownership =>
      _$this._ownership ??= NftOrderDeletedOwnershipBuilder();
  set ownership(NftOrderDeletedOwnershipBuilder? ownership) =>
      _$this._ownership = ownership;

  NftOrderOwnershipDeleteEventTypeEnum? _type;
  NftOrderOwnershipDeleteEventTypeEnum? get type => _$this._type;
  set type(NftOrderOwnershipDeleteEventTypeEnum? type) => _$this._type = type;

  NftOrderOwnershipDeleteEventBuilder() {
    NftOrderOwnershipDeleteEvent._defaults(this);
  }

  NftOrderOwnershipDeleteEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownership = $v.ownership.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderOwnershipDeleteEvent other) {
    _$v = other as _$NftOrderOwnershipDeleteEvent;
  }

  @override
  void update(void Function(NftOrderOwnershipDeleteEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderOwnershipDeleteEvent build() => _build();

  _$NftOrderOwnershipDeleteEvent _build() {
    _$NftOrderOwnershipDeleteEvent _$result;
    try {
      _$result = _$v ??
          _$NftOrderOwnershipDeleteEvent._(
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
            r'NftOrderOwnershipDeleteEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
