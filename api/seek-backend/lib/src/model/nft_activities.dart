//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_activity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_activities.g.dart';

/// NftActivities
///
/// Properties:
/// * [items] - List of found activities
/// * [continuation] - Continuation token to paginate items search result
@BuiltValue()
abstract class NftActivities
    implements Built<NftActivities, NftActivitiesBuilder> {
  /// List of found activities
  @BuiltValueField(wireName: r'items')
  BuiltList<NftActivity> get items;

  /// Continuation token to paginate items search result
  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  NftActivities._();

  factory NftActivities([void updates(NftActivitiesBuilder b)]) =
      _$NftActivities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftActivitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftActivities> get serializer =>
      _$NftActivitiesSerializer();
}

class _$NftActivitiesSerializer implements PrimitiveSerializer<NftActivities> {
  @override
  final Iterable<Type> types = const [NftActivities, _$NftActivities];

  @override
  final String wireName = r'NftActivities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftActivities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(NftActivity)]),
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
    NftActivities object, {
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
    required NftActivitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NftActivity)]),
          ) as BuiltList<NftActivity>;
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
  NftActivities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftActivitiesBuilder();
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
