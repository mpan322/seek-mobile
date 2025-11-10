// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownership_filter_by_creator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftOwnershipFilterByCreatorAtTypeEnum
    _$nftOwnershipFilterByCreatorAtTypeEnum_byCreator =
    const NftOwnershipFilterByCreatorAtTypeEnum._('byCreator');

NftOwnershipFilterByCreatorAtTypeEnum
    _$nftOwnershipFilterByCreatorAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'byCreator':
      return _$nftOwnershipFilterByCreatorAtTypeEnum_byCreator;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftOwnershipFilterByCreatorAtTypeEnum>
    _$nftOwnershipFilterByCreatorAtTypeEnumValues = BuiltSet<
        NftOwnershipFilterByCreatorAtTypeEnum>(const <NftOwnershipFilterByCreatorAtTypeEnum>[
  _$nftOwnershipFilterByCreatorAtTypeEnum_byCreator,
]);

Serializer<NftOwnershipFilterByCreatorAtTypeEnum>
    _$nftOwnershipFilterByCreatorAtTypeEnumSerializer =
    _$NftOwnershipFilterByCreatorAtTypeEnumSerializer();

class _$NftOwnershipFilterByCreatorAtTypeEnumSerializer
    implements PrimitiveSerializer<NftOwnershipFilterByCreatorAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCreator': 'by_creator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_creator': 'byCreator',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NftOwnershipFilterByCreatorAtTypeEnum
  ];
  @override
  final String wireName = 'NftOwnershipFilterByCreatorAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NftOwnershipFilterByCreatorAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftOwnershipFilterByCreatorAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftOwnershipFilterByCreatorAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NftOwnershipFilterByCreator extends NftOwnershipFilterByCreator {
  @override
  final NftOwnershipFilterByCreatorAtTypeEnum atType;
  @override
  final String creator;

  factory _$NftOwnershipFilterByCreator(
          [void Function(NftOwnershipFilterByCreatorBuilder)? updates]) =>
      (NftOwnershipFilterByCreatorBuilder()..update(updates))._build();

  _$NftOwnershipFilterByCreator._({required this.atType, required this.creator})
      : super._();
  @override
  NftOwnershipFilterByCreator rebuild(
          void Function(NftOwnershipFilterByCreatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipFilterByCreatorBuilder toBuilder() =>
      NftOwnershipFilterByCreatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnershipFilterByCreator &&
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
    return (newBuiltValueToStringHelper(r'NftOwnershipFilterByCreator')
          ..add('atType', atType)
          ..add('creator', creator))
        .toString();
  }
}

class NftOwnershipFilterByCreatorBuilder
    implements
        Builder<NftOwnershipFilterByCreator,
            NftOwnershipFilterByCreatorBuilder> {
  _$NftOwnershipFilterByCreator? _$v;

  NftOwnershipFilterByCreatorAtTypeEnum? _atType;
  NftOwnershipFilterByCreatorAtTypeEnum? get atType => _$this._atType;
  set atType(NftOwnershipFilterByCreatorAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _creator;
  String? get creator => _$this._creator;
  set creator(String? creator) => _$this._creator = creator;

  NftOwnershipFilterByCreatorBuilder() {
    NftOwnershipFilterByCreator._defaults(this);
  }

  NftOwnershipFilterByCreatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _creator = $v.creator;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOwnershipFilterByCreator other) {
    _$v = other as _$NftOwnershipFilterByCreator;
  }

  @override
  void update(void Function(NftOwnershipFilterByCreatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnershipFilterByCreator build() => _build();

  _$NftOwnershipFilterByCreator _build() {
    final _$result = _$v ??
        _$NftOwnershipFilterByCreator._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'NftOwnershipFilterByCreator', 'atType'),
          creator: BuiltValueNullFieldError.checkNotNull(
              creator, r'NftOwnershipFilterByCreator', 'creator'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
