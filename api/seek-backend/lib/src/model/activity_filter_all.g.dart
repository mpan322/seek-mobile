// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_filter_all.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivityFilterAllAtTypeEnum _$activityFilterAllAtTypeEnum_all =
    const ActivityFilterAllAtTypeEnum._('all');

ActivityFilterAllAtTypeEnum _$activityFilterAllAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'all':
      return _$activityFilterAllAtTypeEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityFilterAllAtTypeEnum>
    _$activityFilterAllAtTypeEnumValues =
    BuiltSet<ActivityFilterAllAtTypeEnum>(const <ActivityFilterAllAtTypeEnum>[
  _$activityFilterAllAtTypeEnum_all,
]);

Serializer<ActivityFilterAllAtTypeEnum>
    _$activityFilterAllAtTypeEnumSerializer =
    _$ActivityFilterAllAtTypeEnumSerializer();

class _$ActivityFilterAllAtTypeEnumSerializer
    implements PrimitiveSerializer<ActivityFilterAllAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityFilterAllAtTypeEnum];
  @override
  final String wireName = 'ActivityFilterAllAtTypeEnum';

  @override
  Object serialize(Serializers serializers, ActivityFilterAllAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityFilterAllAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityFilterAllAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActivityFilterAll extends ActivityFilterAll {
  @override
  final ActivityFilterAllAtTypeEnum atType;
  @override
  final BuiltList<ActivityFilterTypes> types;

  factory _$ActivityFilterAll(
          [void Function(ActivityFilterAllBuilder)? updates]) =>
      (ActivityFilterAllBuilder()..update(updates))._build();

  _$ActivityFilterAll._({required this.atType, required this.types})
      : super._();
  @override
  ActivityFilterAll rebuild(void Function(ActivityFilterAllBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityFilterAllBuilder toBuilder() =>
      ActivityFilterAllBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityFilterAll &&
        atType == other.atType &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityFilterAll')
          ..add('atType', atType)
          ..add('types', types))
        .toString();
  }
}

class ActivityFilterAllBuilder
    implements Builder<ActivityFilterAll, ActivityFilterAllBuilder> {
  _$ActivityFilterAll? _$v;

  ActivityFilterAllAtTypeEnum? _atType;
  ActivityFilterAllAtTypeEnum? get atType => _$this._atType;
  set atType(ActivityFilterAllAtTypeEnum? atType) => _$this._atType = atType;

  ListBuilder<ActivityFilterTypes>? _types;
  ListBuilder<ActivityFilterTypes> get types =>
      _$this._types ??= ListBuilder<ActivityFilterTypes>();
  set types(ListBuilder<ActivityFilterTypes>? types) => _$this._types = types;

  ActivityFilterAllBuilder() {
    ActivityFilterAll._defaults(this);
  }

  ActivityFilterAllBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _types = $v.types.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityFilterAll other) {
    _$v = other as _$ActivityFilterAll;
  }

  @override
  void update(void Function(ActivityFilterAllBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityFilterAll build() => _build();

  _$ActivityFilterAll _build() {
    _$ActivityFilterAll _$result;
    try {
      _$result = _$v ??
          _$ActivityFilterAll._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'ActivityFilterAll', 'atType'),
            types: types.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ActivityFilterAll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
