//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_order_ownership.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_nft_order_ownership_item.g.dart';

/// PageNftOrderOwnershipItem
///
/// Properties:
/// * [data] - List of found data items
/// * [continuation] - Continuation token to paginate the search result
@BuiltValue()
abstract class PageNftOrderOwnershipItem
    implements
        Built<PageNftOrderOwnershipItem, PageNftOrderOwnershipItemBuilder> {
  /// List of found data items
  @BuiltValueField(wireName: r'data')
  BuiltList<NftOrderOwnership> get data;

  /// Continuation token to paginate the search result
  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  PageNftOrderOwnershipItem._();

  factory PageNftOrderOwnershipItem(
          [void updates(PageNftOrderOwnershipItemBuilder b)]) =
      _$PageNftOrderOwnershipItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PageNftOrderOwnershipItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PageNftOrderOwnershipItem> get serializer =>
      _$PageNftOrderOwnershipItemSerializer();
}

class _$PageNftOrderOwnershipItemSerializer
    implements PrimitiveSerializer<PageNftOrderOwnershipItem> {
  @override
  final Iterable<Type> types = const [
    PageNftOrderOwnershipItem,
    _$PageNftOrderOwnershipItem
  ];

  @override
  final String wireName = r'PageNftOrderOwnershipItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PageNftOrderOwnershipItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(NftOrderOwnership)]),
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
    PageNftOrderOwnershipItem object, {
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
    required PageNftOrderOwnershipItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NftOrderOwnership)]),
          ) as BuiltList<NftOrderOwnership>;
          result.data.replace(valueDes);
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
  PageNftOrderOwnershipItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PageNftOrderOwnershipItemBuilder();
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
