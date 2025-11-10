// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivitySource_Enum _$activitySourceEnum_RARIBLE =
    const ActivitySource_Enum._('RARIBLE');
const ActivitySource_Enum _$activitySourceEnum_OPEN_SEA =
    const ActivitySource_Enum._('OPEN_SEA');

ActivitySource_Enum _$activitySourceEnumValueOf(String name) {
  switch (name) {
    case 'RARIBLE':
      return _$activitySourceEnum_RARIBLE;
    case 'OPEN_SEA':
      return _$activitySourceEnum_OPEN_SEA;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivitySource_Enum> _$activitySourceEnumValues =
    BuiltSet<ActivitySource_Enum>(const <ActivitySource_Enum>[
  _$activitySourceEnum_RARIBLE,
  _$activitySourceEnum_OPEN_SEA,
]);

const ActivityAtTypeEnum _$activityAtTypeEnum_transfer =
    const ActivityAtTypeEnum._('transfer');

ActivityAtTypeEnum _$activityAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'transfer':
      return _$activityAtTypeEnum_transfer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityAtTypeEnum> _$activityAtTypeEnumValues =
    BuiltSet<ActivityAtTypeEnum>(const <ActivityAtTypeEnum>[
  _$activityAtTypeEnum_transfer,
]);

Serializer<ActivitySource_Enum> _$activitySourceEnumSerializer =
    _$ActivitySource_EnumSerializer();
Serializer<ActivityAtTypeEnum> _$activityAtTypeEnumSerializer =
    _$ActivityAtTypeEnumSerializer();

class _$ActivitySource_EnumSerializer
    implements PrimitiveSerializer<ActivitySource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RARIBLE': 'RARIBLE',
    'OPEN_SEA': 'OPEN_SEA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE': 'RARIBLE',
    'OPEN_SEA': 'OPEN_SEA',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivitySource_Enum];
  @override
  final String wireName = 'ActivitySource_Enum';

  @override
  Object serialize(Serializers serializers, ActivitySource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivitySource_Enum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivitySource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActivityAtTypeEnumSerializer
    implements PrimitiveSerializer<ActivityAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'transfer': 'transfer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'transfer': 'transfer',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityAtTypeEnum];
  @override
  final String wireName = 'ActivityAtTypeEnum';

  @override
  Object serialize(Serializers serializers, ActivityAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Activity extends Activity {
  @override
  final OneOf oneOf;

  factory _$Activity([void Function(ActivityBuilder)? updates]) =>
      (ActivityBuilder()..update(updates))._build();

  _$Activity._({required this.oneOf}) : super._();
  @override
  Activity rebuild(void Function(ActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityBuilder toBuilder() => ActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activity && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Activity')..add('oneOf', oneOf))
        .toString();
  }
}

class ActivityBuilder implements Builder<Activity, ActivityBuilder> {
  _$Activity? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ActivityBuilder() {
    Activity._defaults(this);
  }

  ActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Activity other) {
    _$v = other as _$Activity;
  }

  @override
  void update(void Function(ActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Activity build() => _build();

  _$Activity _build() {
    final _$result = _$v ??
        _$Activity._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'Activity', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
