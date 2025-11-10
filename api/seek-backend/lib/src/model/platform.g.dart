// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Platform _$ALL = const Platform._('ALL');
const Platform _$RARIBLE = const Platform._('RARIBLE');
const Platform _$OPEN_SEA = const Platform._('OPEN_SEA');

Platform _$valueOf(String name) {
  switch (name) {
    case 'ALL':
      return _$ALL;
    case 'RARIBLE':
      return _$RARIBLE;
    case 'OPEN_SEA':
      return _$OPEN_SEA;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Platform> _$values = BuiltSet<Platform>(const <Platform>[
  _$ALL,
  _$RARIBLE,
  _$OPEN_SEA,
]);

class _$PlatformMeta {
  const _$PlatformMeta();
  Platform get ALL => _$ALL;
  Platform get RARIBLE => _$RARIBLE;
  Platform get OPEN_SEA => _$OPEN_SEA;
  Platform valueOf(String name) => _$valueOf(name);
  BuiltSet<Platform> get values => _$values;
}

abstract class _$PlatformMixin {
  // ignore: non_constant_identifier_names
  _$PlatformMeta get Platform => const _$PlatformMeta();
}

Serializer<Platform> _$platformSerializer = _$PlatformSerializer();

class _$PlatformSerializer implements PrimitiveSerializer<Platform> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ALL': 'ALL',
    'RARIBLE': 'RARIBLE',
    'OPEN_SEA': 'OPEN_SEA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ALL': 'ALL',
    'RARIBLE': 'RARIBLE',
    'OPEN_SEA': 'OPEN_SEA',
  };

  @override
  final Iterable<Type> types = const <Type>[Platform];
  @override
  final String wireName = 'Platform';

  @override
  Object serialize(Serializers serializers, Platform object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Platform deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Platform.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
