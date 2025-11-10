//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/activity_types.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_filter_by_collection.g.dart';

/// ActivityFilterByCollection
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [types]
@BuiltValue()
abstract class ActivityFilterByCollection
    implements
        Built<ActivityFilterByCollection, ActivityFilterByCollectionBuilder> {
  @BuiltValueField(wireName: r'@type')
  ActivityFilterByCollectionAtTypeEnum get atType;
  // enum atTypeEnum {  by_collection,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'types')
  BuiltList<ActivityTypes> get types;

  ActivityFilterByCollection._();

  factory ActivityFilterByCollection(
          [void updates(ActivityFilterByCollectionBuilder b)]) =
      _$ActivityFilterByCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityFilterByCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityFilterByCollection> get serializer =>
      _$ActivityFilterByCollectionSerializer();
}

class _$ActivityFilterByCollectionSerializer
    implements PrimitiveSerializer<ActivityFilterByCollection> {
  @override
  final Iterable<Type> types = const [
    ActivityFilterByCollection,
    _$ActivityFilterByCollection
  ];

  @override
  final String wireName = r'ActivityFilterByCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityFilterByCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(ActivityFilterByCollectionAtTypeEnum),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
      specifiedType: const FullType(String),
    );
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType: const FullType(BuiltList, [FullType(ActivityTypes)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivityFilterByCollection object, {
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
    required ActivityFilterByCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivityFilterByCollectionAtTypeEnum),
          ) as ActivityFilterByCollectionAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ActivityTypes)]),
          ) as BuiltList<ActivityTypes>;
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
  ActivityFilterByCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityFilterByCollectionBuilder();
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

class ActivityFilterByCollectionAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const ActivityFilterByCollectionAtTypeEnum byCollection =
      _$activityFilterByCollectionAtTypeEnum_byCollection;

  static Serializer<ActivityFilterByCollectionAtTypeEnum> get serializer =>
      _$activityFilterByCollectionAtTypeEnumSerializer;

  const ActivityFilterByCollectionAtTypeEnum._(String name) : super(name);

  static BuiltSet<ActivityFilterByCollectionAtTypeEnum> get values =>
      _$activityFilterByCollectionAtTypeEnumValues;
  static ActivityFilterByCollectionAtTypeEnum valueOf(String name) =>
      _$activityFilterByCollectionAtTypeEnumValueOf(name);
}
