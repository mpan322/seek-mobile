// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_update_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftItemUpdateEventTypeEnum _$nftItemUpdateEventTypeEnum_UPDATE =
    const NftItemUpdateEventTypeEnum._('UPDATE');

NftItemUpdateEventTypeEnum _$nftItemUpdateEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$nftItemUpdateEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftItemUpdateEventTypeEnum> _$nftItemUpdateEventTypeEnumValues =
    BuiltSet<NftItemUpdateEventTypeEnum>(const <NftItemUpdateEventTypeEnum>[
  _$nftItemUpdateEventTypeEnum_UPDATE,
]);

Serializer<NftItemUpdateEventTypeEnum> _$nftItemUpdateEventTypeEnumSerializer =
    _$NftItemUpdateEventTypeEnumSerializer();

class _$NftItemUpdateEventTypeEnumSerializer
    implements PrimitiveSerializer<NftItemUpdateEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftItemUpdateEventTypeEnum];
  @override
  final String wireName = 'NftItemUpdateEventTypeEnum';

  @override
  Object serialize(Serializers serializers, NftItemUpdateEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftItemUpdateEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftItemUpdateEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftItemUpdateEvent extends NftItemUpdateEvent {
  @override
  final NftItem item;
  @override
  final NftItemUpdateEventTypeEnum? type;

  factory _$NftItemUpdateEvent(
          [void Function(NftItemUpdateEventBuilder)? updates]) =>
      (NftItemUpdateEventBuilder()..update(updates))._build();

  _$NftItemUpdateEvent._({required this.item, this.type}) : super._();
  @override
  NftItemUpdateEvent rebuild(
          void Function(NftItemUpdateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemUpdateEventBuilder toBuilder() =>
      NftItemUpdateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemUpdateEvent &&
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
    return (newBuiltValueToStringHelper(r'NftItemUpdateEvent')
          ..add('item', item)
          ..add('type', type))
        .toString();
  }
}

class NftItemUpdateEventBuilder
    implements Builder<NftItemUpdateEvent, NftItemUpdateEventBuilder> {
  _$NftItemUpdateEvent? _$v;

  NftItemBuilder? _item;
  NftItemBuilder get item => _$this._item ??= NftItemBuilder();
  set item(NftItemBuilder? item) => _$this._item = item;

  NftItemUpdateEventTypeEnum? _type;
  NftItemUpdateEventTypeEnum? get type => _$this._type;
  set type(NftItemUpdateEventTypeEnum? type) => _$this._type = type;

  NftItemUpdateEventBuilder() {
    NftItemUpdateEvent._defaults(this);
  }

  NftItemUpdateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItemUpdateEvent other) {
    _$v = other as _$NftItemUpdateEvent;
  }

  @override
  void update(void Function(NftItemUpdateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemUpdateEvent build() => _build();

  _$NftItemUpdateEvent _build() {
    _$NftItemUpdateEvent _$result;
    try {
      _$result = _$v ??
          _$NftItemUpdateEvent._(
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
            r'NftItemUpdateEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
