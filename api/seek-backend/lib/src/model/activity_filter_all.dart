//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/activity_filter_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_filter_all.g.dart';

/// ActivityFilterAll
///
/// Properties:
/// * [atType]
/// * [types]
@BuiltValue()
abstract class ActivityFilterAll
    implements Built<ActivityFilterAll, ActivityFilterAllBuilder> {
  @BuiltValueField(wireName: r'@type')
  ActivityFilterAllAtTypeEnum get atType;
  // enum atTypeEnum {  all,  };

  @BuiltValueField(wireName: r'types')
  BuiltList<ActivityFilterTypes> get types;

  ActivityFilterAll._();

  factory ActivityFilterAll([void updates(ActivityFilterAllBuilder b)]) =
      _$ActivityFilterAll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityFilterAllBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityFilterAll> get serializer =>
      _$ActivityFilterAllSerializer();
}

class _$ActivityFilterAllSerializer
    implements PrimitiveSerializer<ActivityFilterAll> {
  @override
  final Iterable<Type> types = const [ActivityFilterAll, _$ActivityFilterAll];

  @override
  final String wireName = r'ActivityFilterAll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityFilterAll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(ActivityFilterAllAtTypeEnum),
    );
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType: const FullType(BuiltList, [FullType(ActivityFilterTypes)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivityFilterAll object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivityFilterAllBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivityFilterAllAtTypeEnum),
          ) as ActivityFilterAllAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ActivityFilterTypes)]),
          ) as BuiltList<ActivityFilterTypes>;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivityFilterAll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityFilterAllBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ActivityFilterAllAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'all')
  static const ActivityFilterAllAtTypeEnum all =
      _$activityFilterAllAtTypeEnum_all;

  static Serializer<ActivityFilterAllAtTypeEnum> get serializer =>
      _$activityFilterAllAtTypeEnumSerializer;

  const ActivityFilterAllAtTypeEnum._(String name) : super(name);

  static BuiltSet<ActivityFilterAllAtTypeEnum> get values =>
      _$activityFilterAllAtTypeEnumValues;
  static ActivityFilterAllAtTypeEnum valueOf(String name) =>
      _$activityFilterAllAtTypeEnumValueOf(name);
}
