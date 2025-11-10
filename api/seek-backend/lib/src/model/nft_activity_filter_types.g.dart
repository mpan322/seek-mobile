// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_activity_filter_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftActivityFilterTypes _$TRANSFER =
    const NftActivityFilterTypes._('TRANSFER');
const NftActivityFilterTypes _$MINT = const NftActivityFilterTypes._('MINT');
const NftActivityFilterTypes _$BURN = const NftActivityFilterTypes._('BURN');

NftActivityFilterTypes _$valueOf(String name) {
  switch (name) {
    case 'TRANSFER':
      return _$TRANSFER;
    case 'MINT':
      return _$MINT;
    case 'BURN':
      return _$BURN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftActivityFilterTypes> _$values =
    BuiltSet<NftActivityFilterTypes>(const <NftActivityFilterTypes>[
  _$TRANSFER,
  _$MINT,
  _$BURN,
]);

class _$NftActivityFilterTypesMeta {
  const _$NftActivityFilterTypesMeta();
  NftActivityFilterTypes get TRANSFER => _$TRANSFER;
  NftActivityFilterTypes get MINT => _$MINT;
  NftActivityFilterTypes get BURN => _$BURN;
  NftActivityFilterTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<NftActivityFilterTypes> get values => _$values;
}

abstract class _$NftActivityFilterTypesMixin {
  // ignore: non_constant_identifier_names
  _$NftActivityFilterTypesMeta get NftActivityFilterTypes =>
      const _$NftActivityFilterTypesMeta();
}

Serializer<NftActivityFilterTypes> _$nftActivityFilterTypesSerializer =
    _$NftActivityFilterTypesSerializer();

class _$NftActivityFilterTypesSerializer
    implements PrimitiveSerializer<NftActivityFilterTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TRANSFER': 'TRANSFER',
    'MINT': 'MINT',
    'BURN': 'BURN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TRANSFER': 'TRANSFER',
    'MINT': 'MINT',
    'BURN': 'BURN',
  };

  @override
  final Iterable<Type> types = const <Type>[NftActivityFilterTypes];
  @override
  final String wireName = 'NftActivityFilterTypes';

  @override
  Object serialize(Serializers serializers, NftActivityFilterTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftActivityFilterTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftActivityFilterTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
