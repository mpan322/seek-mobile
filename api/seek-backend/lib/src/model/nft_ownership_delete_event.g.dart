// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownership_delete_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOwnershipDeleteEventTypeEnum _$nftOwnershipDeleteEventTypeEnum_DELETE =
    const NftOwnershipDeleteEventTypeEnum._('DELETE');

NftOwnershipDeleteEventTypeEnum _$nftOwnershipDeleteEventTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'DELETE':
      return _$nftOwnershipDeleteEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipDeleteEventTypeEnum>
    _$nftOwnershipDeleteEventTypeEnumValues = BuiltSet<
        NftOwnershipDeleteEventTypeEnum>(const <NftOwnershipDeleteEventTypeEnum>[
  _$nftOwnershipDeleteEventTypeEnum_DELETE,
]);

Serializer<NftOwnershipDeleteEventTypeEnum>
    _$nftOwnershipDeleteEventTypeEnumSerializer =
    _$NftOwnershipDeleteEventTypeEnumSerializer();

class _$NftOwnershipDeleteEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOwnershipDeleteEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOwnershipDeleteEventTypeEnum];
  @override
  final String wireName = 'NftOwnershipDeleteEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOwnershipDeleteEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipDeleteEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipDeleteEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipDeleteEvent extends NftOwnershipDeleteEvent {
  @override
  final NftDeletedOwnership ownership;
  @override
  final NftOwnershipDeleteEventTypeEnum? type;

  factory _$NftOwnershipDeleteEvent(
          [void Function(NftOwnershipDeleteEventBuilder)? updates]) =>
      (NftOwnershipDeleteEventBuilder()..update(updates))._build();

  _$NftOwnershipDeleteEvent._({required this.ownership, this.type}) : super._();
  @override
  NftOwnershipDeleteEvent rebuild(
          void Function(NftOwnershipDeleteEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipDeleteEventBuilder toBuilder() =>
      NftOwnershipDeleteEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnershipDeleteEvent &&
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
    return (newBuiltValueToStringHelper(r'NftOwnershipDeleteEvent')
          ..add('ownership', ownership)
          ..add('type', type))
        .toString();
  }
}

class NftOwnershipDeleteEventBuilder
    implements
        Builder<NftOwnershipDeleteEvent, NftOwnershipDeleteEventBuilder> {
  _$NftOwnershipDeleteEvent? _$v;

  NftDeletedOwnershipBuilder? _ownership;
  NftDeletedOwnershipBuilder get ownership =>
      _$this._ownership ??= NftDeletedOwnershipBuilder();
  set ownership(NftDeletedOwnershipBuilder? ownership) =>
      _$this._ownership = ownership;

  NftOwnershipDeleteEventTypeEnum? _type;
  NftOwnershipDeleteEventTypeEnum? get type => _$this._type;
  set type(NftOwnershipDeleteEventTypeEnum? type) => _$this._type = type;

  NftOwnershipDeleteEventBuilder() {
    NftOwnershipDeleteEvent._defaults(this);
  }

  NftOwnershipDeleteEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownership = $v.ownership.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOwnershipDeleteEvent other) {
    _$v = other as _$NftOwnershipDeleteEvent;
  }

  @override
  void update(void Function(NftOwnershipDeleteEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnershipDeleteEvent build() => _build();

  _$NftOwnershipDeleteEvent _build() {
    _$NftOwnershipDeleteEvent _$result;
    try {
      _$result = _$v ??
          _$NftOwnershipDeleteEvent._(
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
            r'NftOwnershipDeleteEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
