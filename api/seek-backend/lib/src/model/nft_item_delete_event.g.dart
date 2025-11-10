// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_delete_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftItemDeleteEventTypeEnum _$nftItemDeleteEventTypeEnum_DELETE =
    const NftItemDeleteEventTypeEnum._('DELETE');

NftItemDeleteEventTypeEnum _$nftItemDeleteEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'DELETE':
      return _$nftItemDeleteEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftItemDeleteEventTypeEnum> _$nftItemDeleteEventTypeEnumValues =
    BuiltSet<NftItemDeleteEventTypeEnum>(const <NftItemDeleteEventTypeEnum>[
  _$nftItemDeleteEventTypeEnum_DELETE,
]);

Serializer<NftItemDeleteEventTypeEnum> _$nftItemDeleteEventTypeEnumSerializer =
    _$NftItemDeleteEventTypeEnumSerializer();

class _$NftItemDeleteEventTypeEnumSerializer
    implements PrimitiveSerializer<NftItemDeleteEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftItemDeleteEventTypeEnum];
  @override
  final String wireName = 'NftItemDeleteEventTypeEnum';

  @override
  Object serialize(Serializers serializers, NftItemDeleteEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftItemDeleteEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftItemDeleteEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftItemDeleteEvent extends NftItemDeleteEvent {
  @override
  final NftDeletedItem item;
  @override
  final NftItemDeleteEventTypeEnum? type;

  factory _$NftItemDeleteEvent(
          [void Function(NftItemDeleteEventBuilder)? updates]) =>
      (NftItemDeleteEventBuilder()..update(updates))._build();

  _$NftItemDeleteEvent._({required this.item, this.type}) : super._();
  @override
  NftItemDeleteEvent rebuild(
          void Function(NftItemDeleteEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemDeleteEventBuilder toBuilder() =>
      NftItemDeleteEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemDeleteEvent &&
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
    return (newBuiltValueToStringHelper(r'NftItemDeleteEvent')
          ..add('item', item)
          ..add('type', type))
        .toString();
  }
}

class NftItemDeleteEventBuilder
    implements Builder<NftItemDeleteEvent, NftItemDeleteEventBuilder> {
  _$NftItemDeleteEvent? _$v;

  NftDeletedItemBuilder? _item;
  NftDeletedItemBuilder get item => _$this._item ??= NftDeletedItemBuilder();
  set item(NftDeletedItemBuilder? item) => _$this._item = item;

  NftItemDeleteEventTypeEnum? _type;
  NftItemDeleteEventTypeEnum? get type => _$this._type;
  set type(NftItemDeleteEventTypeEnum? type) => _$this._type = type;

  NftItemDeleteEventBuilder() {
    NftItemDeleteEvent._defaults(this);
  }

  NftItemDeleteEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItemDeleteEvent other) {
    _$v = other as _$NftItemDeleteEvent;
  }

  @override
  void update(void Function(NftItemDeleteEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemDeleteEvent build() => _build();

  _$NftItemDeleteEvent _build() {
    _$NftItemDeleteEvent _$result;
    try {
      _$result = _$v ??
          _$NftItemDeleteEvent._(
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
            r'NftItemDeleteEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
