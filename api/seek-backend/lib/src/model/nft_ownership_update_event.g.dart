// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownership_update_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOwnershipUpdateEventTypeEnum _$nftOwnershipUpdateEventTypeEnum_UPDATE =
    const NftOwnershipUpdateEventTypeEnum._('UPDATE');

NftOwnershipUpdateEventTypeEnum _$nftOwnershipUpdateEventTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftOwnershipUpdateEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipUpdateEventTypeEnum>
    _$nftOwnershipUpdateEventTypeEnumValues = BuiltSet<
        NftOwnershipUpdateEventTypeEnum>(const <NftOwnershipUpdateEventTypeEnum>[
  _$nftOwnershipUpdateEventTypeEnum_UPDATE,
]);

Serializer<NftOwnershipUpdateEventTypeEnum>
    _$nftOwnershipUpdateEventTypeEnumSerializer =
    _$NftOwnershipUpdateEventTypeEnumSerializer();

class _$NftOwnershipUpdateEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOwnershipUpdateEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOwnershipUpdateEventTypeEnum];
  @override
  final String wireName = 'NftOwnershipUpdateEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOwnershipUpdateEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipUpdateEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipUpdateEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipUpdateEvent extends NftOwnershipUpdateEvent {
  @override
  final NftOwnership ownership;
  @override
  final NftOwnershipUpdateEventTypeEnum? type;

  factory _$NftOwnershipUpdateEvent(
          [void Function(NftOwnershipUpdateEventBuilder)? updates]) =>
      (NftOwnershipUpdateEventBuilder()..update(updates))._build();

  _$NftOwnershipUpdateEvent._({required this.ownership, this.type}) : super._();
  @override
  NftOwnershipUpdateEvent rebuild(
          void Function(NftOwnershipUpdateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipUpdateEventBuilder toBuilder() =>
      NftOwnershipUpdateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnershipUpdateEvent &&
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
    return (newBuiltValueToStringHelper(r'NftOwnershipUpdateEvent')
          ..add('ownership', ownership)
          ..add('type', type))
        .toString();
  }
}

class NftOwnershipUpdateEventBuilder
    implements
        Builder<NftOwnershipUpdateEvent, NftOwnershipUpdateEventBuilder> {
  _$NftOwnershipUpdateEvent? _$v;

  NftOwnershipBuilder? _ownership;
  NftOwnershipBuilder get ownership =>
      _$this._ownership ??= NftOwnershipBuilder();
  set ownership(NftOwnershipBuilder? ownership) =>
      _$this._ownership = ownership;

  NftOwnershipUpdateEventTypeEnum? _type;
  NftOwnershipUpdateEventTypeEnum? get type => _$this._type;
  set type(NftOwnershipUpdateEventTypeEnum? type) => _$this._type = type;

  NftOwnershipUpdateEventBuilder() {
    NftOwnershipUpdateEvent._defaults(this);
  }

  NftOwnershipUpdateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownership = $v.ownership.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOwnershipUpdateEvent other) {
    _$v = other as _$NftOwnershipUpdateEvent;
  }

  @override
  void update(void Function(NftOwnershipUpdateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnershipUpdateEvent build() => _build();

  _$NftOwnershipUpdateEvent _build() {
    _$NftOwnershipUpdateEvent _$result;
    try {
      _$result = _$v ??
          _$NftOwnershipUpdateEvent._(
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
            r'NftOwnershipUpdateEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
