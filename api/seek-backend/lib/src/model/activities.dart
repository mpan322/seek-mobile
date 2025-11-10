//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/activity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activities.g.dart';

/// Activities
///
/// Properties:
/// * [items]
/// * [continuation]
@BuiltValue()
abstract class Activities implements Built<Activities, ActivitiesBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Activity> get items;

  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  Activities._();

  factory Activities([void updates(ActivitiesBuilder b)]) = _$Activities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Activities> get serializer => _$ActivitiesSerializer();
}

class _$ActivitiesSerializer implements PrimitiveSerializer<Activities> {
  @override
  final Iterable<Type> types = const [Activities, _$Activities];

  @override
  final String wireName = r'Activities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Activities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Activity)]),
    );
    if (object.continuation != null) {
      yield r'continuation';
      yield serializers.serialize(
        object.continuation,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Activities object, {
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
    required ActivitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Activity)]),
          ) as BuiltList<Activity>;
          result.items.replace(valueDes);
          break;
        case r'continuation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.continuation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Activities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivitiesBuilder();
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
