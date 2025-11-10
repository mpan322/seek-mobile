// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_sort.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivitySort _$LATEST_FIRST = const ActivitySort._('LATEST_FIRST');
const ActivitySort _$EARLIEST_FIRST = const ActivitySort._('EARLIEST_FIRST');

ActivitySort _$valueOf(String name) {
  switch (name) {
    case 'LATEST_FIRST':
      return _$LATEST_FIRST;
    case 'EARLIEST_FIRST':
      return _$EARLIEST_FIRST;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivitySort> _$values =
    BuiltSet<ActivitySort>(const <ActivitySort>[
  _$LATEST_FIRST,
  _$EARLIEST_FIRST,
]);

class _$ActivitySortMeta {
  const _$ActivitySortMeta();
  ActivitySort get LATEST_FIRST => _$LATEST_FIRST;
  ActivitySort get EARLIEST_FIRST => _$EARLIEST_FIRST;
  ActivitySort valueOf(String name) => _$valueOf(name);
  BuiltSet<ActivitySort> get values => _$values;
}

abstract class _$ActivitySortMixin {
  // ignore: non_constant_identifier_names
  _$ActivitySortMeta get ActivitySort => const _$ActivitySortMeta();
}

Serializer<ActivitySort> _$activitySortSerializer = _$ActivitySortSerializer();

class _$ActivitySortSerializer implements PrimitiveSerializer<ActivitySort> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LATEST_FIRST': 'LATEST_FIRST',
    'EARLIEST_FIRST': 'EARLIEST_FIRST',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LATEST_FIRST': 'LATEST_FIRST',
    'EARLIEST_FIRST': 'EARLIEST_FIRST',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivitySort];
  @override
  final String wireName = 'ActivitySort';

  @override
  Object serialize(Serializers serializers, ActivitySort object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivitySort deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivitySort.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
