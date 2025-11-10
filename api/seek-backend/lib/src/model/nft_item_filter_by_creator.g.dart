// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_filter_by_creator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftItemFilterByCreatorAtTypeEnum
    _$nftItemFilterByCreatorAtTypeEnum_byCreator =
    const NftItemFilterByCreatorAtTypeEnum._('byCreator');

NftItemFilterByCreatorAtTypeEnum _$nftItemFilterByCreatorAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'byCreator':
      return _$nftItemFilterByCreatorAtTypeEnum_byCreator;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftItemFilterByCreatorAtTypeEnum>
    _$nftItemFilterByCreatorAtTypeEnumValues = BuiltSet<
        NftItemFilterByCreatorAtTypeEnum>(const <NftItemFilterByCreatorAtTypeEnum>[
  _$nftItemFilterByCreatorAtTypeEnum_byCreator,
]);

Serializer<NftItemFilterByCreatorAtTypeEnum>
    _$nftItemFilterByCreatorAtTypeEnumSerializer =
    _$NftItemFilterByCreatorAtTypeEnumSerializer();

class _$NftItemFilterByCreatorAtTypeEnumSerializer
    implements PrimitiveSerializer<NftItemFilterByCreatorAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCreator': 'by_creator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_creator': 'byCreator',
  };

  @override
  final Iterable<Type> types = const <Type>[NftItemFilterByCreatorAtTypeEnum];
  @override
  final String wireName = 'NftItemFilterByCreatorAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftItemFilterByCreatorAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftItemFilterByCreatorAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftItemFilterByCreatorAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftItemFilterByCreator extends NftItemFilterByCreator {
  @override
  final NftItemFilterByCreatorAtTypeEnum atType;
  @override
  final String creator;

  factory _$NftItemFilterByCreator(
          [void Function(NftItemFilterByCreatorBuilder)? updates]) =>
      (NftItemFilterByCreatorBuilder()..update(updates))._build();

  _$NftItemFilterByCreator._({required this.atType, required this.creator})
      : super._();
  @override
  NftItemFilterByCreator rebuild(
          void Function(NftItemFilterByCreatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemFilterByCreatorBuilder toBuilder() =>
      NftItemFilterByCreatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemFilterByCreator &&
        atType == other.atType &&
        creator == other.creator;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, creator.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftItemFilterByCreator')
          ..add('atType', atType)
          ..add('creator', creator))
        .toString();
  }
}

class NftItemFilterByCreatorBuilder
    implements Builder<NftItemFilterByCreator, NftItemFilterByCreatorBuilder> {
  _$NftItemFilterByCreator? _$v;

  NftItemFilterByCreatorAtTypeEnum? _atType;
  NftItemFilterByCreatorAtTypeEnum? get atType => _$this._atType;
  set atType(NftItemFilterByCreatorAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _creator;
  String? get creator => _$this._creator;
  set creator(String? creator) => _$this._creator = creator;

  NftItemFilterByCreatorBuilder() {
    NftItemFilterByCreator._defaults(this);
  }

  NftItemFilterByCreatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _creator = $v.creator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItemFilterByCreator other) {
    _$v = other as _$NftItemFilterByCreator;
  }

  @override
  void update(void Function(NftItemFilterByCreatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemFilterByCreator build() => _build();

  _$NftItemFilterByCreator _build() {
    final _$result = _$v ??
        _$NftItemFilterByCreator._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'NftItemFilterByCreator', 'atType'),
          creator: BuiltValueNullFieldError.checkNotNull(
              creator, r'NftItemFilterByCreator', 'creator'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
