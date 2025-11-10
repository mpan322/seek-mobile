// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_order_item_delete_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOrderItemDeleteEventTypeEnum _$nftOrderItemDeleteEventTypeEnum_DELETE =
    const NftOrderItemDeleteEventTypeEnum._('DELETE');

NftOrderItemDeleteEventTypeEnum _$nftOrderItemDeleteEventTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'DELETE':
      return _$nftOrderItemDeleteEventTypeEnum_DELETE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOrderItemDeleteEventTypeEnum>
    _$nftOrderItemDeleteEventTypeEnumValues = BuiltSet<
        NftOrderItemDeleteEventTypeEnum>(const <NftOrderItemDeleteEventTypeEnum>[
  _$nftOrderItemDeleteEventTypeEnum_DELETE,
]);

Serializer<NftOrderItemDeleteEventTypeEnum>
    _$nftOrderItemDeleteEventTypeEnumSerializer =
    _$NftOrderItemDeleteEventTypeEnumSerializer();

class _$NftOrderItemDeleteEventTypeEnumSerializer
    implements PrimitiveSerializer<NftOrderItemDeleteEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DELETE': 'DELETE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DELETE': 'DELETE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftOrderItemDeleteEventTypeEnum];
  @override
  final String wireName = 'NftOrderItemDeleteEventTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOrderItemDeleteEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOrderItemDeleteEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOrderItemDeleteEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOrderItemDeleteEvent extends NftOrderItemDeleteEvent {
  @override
  final NftOrderDeletedItem item;
  @override
  final NftOrderItemDeleteEventTypeEnum? type;

  factory _$NftOrderItemDeleteEvent(
          [void Function(NftOrderItemDeleteEventBuilder)? updates]) =>
      (NftOrderItemDeleteEventBuilder()..update(updates))._build();

  _$NftOrderItemDeleteEvent._({required this.item, this.type}) : super._();
  @override
  NftOrderItemDeleteEvent rebuild(
          void Function(NftOrderItemDeleteEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOrderItemDeleteEventBuilder toBuilder() =>
      NftOrderItemDeleteEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOrderItemDeleteEvent &&
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
    return (newBuiltValueToStringHelper(r'NftOrderItemDeleteEvent')
          ..add('item', item)
          ..add('type', type))
        .toString();
  }
}

class NftOrderItemDeleteEventBuilder
    implements
        Builder<NftOrderItemDeleteEvent, NftOrderItemDeleteEventBuilder> {
  _$NftOrderItemDeleteEvent? _$v;

  NftOrderDeletedItemBuilder? _item;
  NftOrderDeletedItemBuilder get item =>
      _$this._item ??= NftOrderDeletedItemBuilder();
  set item(NftOrderDeletedItemBuilder? item) => _$this._item = item;

  NftOrderItemDeleteEventTypeEnum? _type;
  NftOrderItemDeleteEventTypeEnum? get type => _$this._type;
  set type(NftOrderItemDeleteEventTypeEnum? type) => _$this._type = type;

  NftOrderItemDeleteEventBuilder() {
    NftOrderItemDeleteEvent._defaults(this);
  }

  NftOrderItemDeleteEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOrderItemDeleteEvent other) {
    _$v = other as _$NftOrderItemDeleteEvent;
  }

  @override
  void update(void Function(NftOrderItemDeleteEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOrderItemDeleteEvent build() => _build();

  _$NftOrderItemDeleteEvent _build() {
    _$NftOrderItemDeleteEvent _$result;
    try {
      _$result = _$v ??
          _$NftOrderItemDeleteEvent._(
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
            r'NftOrderItemDeleteEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
