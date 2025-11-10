// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivityFilterAtTypeEnum _$activityFilterAtTypeEnum_byCollection =
    const ActivityFilterAtTypeEnum._('byCollection');

ActivityFilterAtTypeEnum _$activityFilterAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'byCollection':
      return _$activityFilterAtTypeEnum_byCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityFilterAtTypeEnum> _$activityFilterAtTypeEnumValues =
    BuiltSet<ActivityFilterAtTypeEnum>(const <ActivityFilterAtTypeEnum>[
  _$activityFilterAtTypeEnum_byCollection,
]);

Serializer<ActivityFilterAtTypeEnum> _$activityFilterAtTypeEnumSerializer =
    _$ActivityFilterAtTypeEnumSerializer();

class _$ActivityFilterAtTypeEnumSerializer
    implements PrimitiveSerializer<ActivityFilterAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'byCollection': 'by_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'by_collection': 'byCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityFilterAtTypeEnum];
  @override
  final String wireName = 'ActivityFilterAtTypeEnum';

  @override
  Object serialize(Serializers serializers, ActivityFilterAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityFilterAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityFilterAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActivityFilter extends ActivityFilter {
  @override
  final OneOf oneOf;

  factory _$ActivityFilter([void Function(ActivityFilterBuilder)? updates]) =>
      (ActivityFilterBuilder()..update(updates))._build();

  _$ActivityFilter._({required this.oneOf}) : super._();
  @override
  ActivityFilter rebuild(void Function(ActivityFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityFilterBuilder toBuilder() => ActivityFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityFilter && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'ActivityFilter')..add('oneOf', oneOf))
        .toString();
  }
}

class ActivityFilterBuilder
    implements Builder<ActivityFilter, ActivityFilterBuilder> {
  _$ActivityFilter? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ActivityFilterBuilder() {
    ActivityFilter._defaults(this);
  }

  ActivityFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityFilter other) {
    _$v = other as _$ActivityFilter;
  }

  @override
  void update(void Function(ActivityFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityFilter build() => _build();

  _$ActivityFilter _build() {
    final _$result = _$v ??
        _$ActivityFilter._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ActivityFilter', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
