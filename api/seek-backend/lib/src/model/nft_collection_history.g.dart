// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_collection_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftCollectionHistoryTypeEnum
    _$nftCollectionHistoryTypeEnum_COLLECTION_CREATE =
    const NftCollectionHistoryTypeEnum._('COLLECTION_CREATE');

NftCollectionHistoryTypeEnum _$nftCollectionHistoryTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'COLLECTION_CREATE':
      return _$nftCollectionHistoryTypeEnum_COLLECTION_CREATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftCollectionHistoryTypeEnum>
    _$nftCollectionHistoryTypeEnumValues =
    BuiltSet<NftCollectionHistoryTypeEnum>(const <NftCollectionHistoryTypeEnum>[
  _$nftCollectionHistoryTypeEnum_COLLECTION_CREATE,
]);

Serializer<NftCollectionHistoryTypeEnum>
    _$nftCollectionHistoryTypeEnumSerializer =
    _$NftCollectionHistoryTypeEnumSerializer();

class _$NftCollectionHistoryTypeEnumSerializer
    implements PrimitiveSerializer<NftCollectionHistoryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COLLECTION_CREATE': 'COLLECTION_CREATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COLLECTION_CREATE': 'COLLECTION_CREATE',
  };

  @override
  final Iterable<Type> types = const <Type>[NftCollectionHistoryTypeEnum];
  @override
  final String wireName = 'NftCollectionHistoryTypeEnum';

  @override
  Object serialize(Serializers serializers, NftCollectionHistoryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftCollectionHistoryTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftCollectionHistoryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftCollectionHistory extends NftCollectionHistory {
  @override
  final String id;
  @override
  final OneOf oneOf;

  factory _$NftCollectionHistory(
          [void Function(NftCollectionHistoryBuilder)? updates]) =>
      (NftCollectionHistoryBuilder()..update(updates))._build();

  _$NftCollectionHistory._({required this.id, required this.oneOf}) : super._();
  @override
  NftCollectionHistory rebuild(
          void Function(NftCollectionHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftCollectionHistoryBuilder toBuilder() =>
      NftCollectionHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftCollectionHistory &&
        id == other.id &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftCollectionHistory')
          ..add('id', id)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class NftCollectionHistoryBuilder
    implements Builder<NftCollectionHistory, NftCollectionHistoryBuilder> {
  _$NftCollectionHistory? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  NftCollectionHistoryBuilder() {
    NftCollectionHistory._defaults(this);
  }

  NftCollectionHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftCollectionHistory other) {
    _$v = other as _$NftCollectionHistory;
  }

  @override
  void update(void Function(NftCollectionHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftCollectionHistory build() => _build();

  _$NftCollectionHistory _build() {
    final _$result = _$v ??
        _$NftCollectionHistory._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'NftCollectionHistory', 'id'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'NftCollectionHistory', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
