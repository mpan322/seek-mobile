//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/activity_types.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_filter_by_item.g.dart';

/// ActivityFilterByItem
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [tokenId]
/// * [types]
@BuiltValue()
abstract class ActivityFilterByItem
    implements Built<ActivityFilterByItem, ActivityFilterByItemBuilder> {
  @BuiltValueField(wireName: r'@type')
  ActivityFilterByItemAtTypeEnum get atType;
  // enum atTypeEnum {  by_item,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'types')
  BuiltList<ActivityTypes> get types;

  ActivityFilterByItem._();

  factory ActivityFilterByItem([void updates(ActivityFilterByItemBuilder b)]) =
      _$ActivityFilterByItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityFilterByItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityFilterByItem> get serializer =>
      _$ActivityFilterByItemSerializer();
}

class _$ActivityFilterByItemSerializer
    implements PrimitiveSerializer<ActivityFilterByItem> {
  @override
  final Iterable<Type> types = const [
    ActivityFilterByItem,
    _$ActivityFilterByItem
  ];

  @override
  final String wireName = r'ActivityFilterByItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityFilterByItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(ActivityFilterByItemAtTypeEnum),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
      specifiedType: const FullType(String),
    );
    yield r'tokenId';
    yield serializers.serialize(
      object.tokenId,
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
    ActivityFilterByItem object, {
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
    required ActivityFilterByItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivityFilterByItemAtTypeEnum),
          ) as ActivityFilterByItemAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
          break;
        case r'tokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenId = valueDes;
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
  ActivityFilterByItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityFilterByItemBuilder();
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

class ActivityFilterByItemAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_item')
  static const ActivityFilterByItemAtTypeEnum byItem =
      _$activityFilterByItemAtTypeEnum_byItem;

  static Serializer<ActivityFilterByItemAtTypeEnum> get serializer =>
      _$activityFilterByItemAtTypeEnumSerializer;

  const ActivityFilterByItemAtTypeEnum._(String name) : super(name);

  static BuiltSet<ActivityFilterByItemAtTypeEnum> get values =>
      _$activityFilterByItemAtTypeEnumValues;
  static ActivityFilterByItemAtTypeEnum valueOf(String name) =>
      _$activityFilterByItemAtTypeEnumValueOf(name);
}
