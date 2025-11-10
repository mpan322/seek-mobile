// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_media_size.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NftMediaSize _$ORIGINAL = const NftMediaSize._('ORIGINAL');
const NftMediaSize _$BIG = const NftMediaSize._('BIG');
const NftMediaSize _$PREVIEW = const NftMediaSize._('PREVIEW');

NftMediaSize _$valueOf(String name) {
  switch (name) {
    case 'ORIGINAL':
      return _$ORIGINAL;
    case 'BIG':
      return _$BIG;
    case 'PREVIEW':
      return _$PREVIEW;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NftMediaSize> _$values =
    BuiltSet<NftMediaSize>(const <NftMediaSize>[
  _$ORIGINAL,
  _$BIG,
  _$PREVIEW,
]);

class _$NftMediaSizeMeta {
  const _$NftMediaSizeMeta();
  NftMediaSize get ORIGINAL => _$ORIGINAL;
  NftMediaSize get BIG => _$BIG;
  NftMediaSize get PREVIEW => _$PREVIEW;
  NftMediaSize valueOf(String name) => _$valueOf(name);
  BuiltSet<NftMediaSize> get values => _$values;
}

abstract class _$NftMediaSizeMixin {
  // ignore: non_constant_identifier_names
  _$NftMediaSizeMeta get NftMediaSize => const _$NftMediaSizeMeta();
}

Serializer<NftMediaSize> _$nftMediaSizeSerializer = _$NftMediaSizeSerializer();

class _$NftMediaSizeSerializer implements PrimitiveSerializer<NftMediaSize> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ORIGINAL': 'ORIGINAL',
    'BIG': 'BIG',
    'PREVIEW': 'PREVIEW',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ORIGINAL': 'ORIGINAL',
    'BIG': 'BIG',
    'PREVIEW': 'PREVIEW',
  };

  @override
  final Iterable<Type> types = const <Type>[NftMediaSize];
  @override
  final String wireName = 'NftMediaSize';

  @override
  Object serialize(Serializers serializers, NftMediaSize object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NftMediaSize deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NftMediaSize.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
