//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_order_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_nft_order_item.g.dart';

/// PageNftOrderItem
///
/// Properties:
/// * [data] - List of found data items
/// * [continuation] - Continuation token to paginate the search result
@BuiltValue()
abstract class PageNftOrderItem
    implements Built<PageNftOrderItem, PageNftOrderItemBuilder> {
  /// List of found data items
  @BuiltValueField(wireName: r'data')
  BuiltList<NftOrderItem> get data;

  /// Continuation token to paginate the search result
  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  PageNftOrderItem._();

  factory PageNftOrderItem([void updates(PageNftOrderItemBuilder b)]) =
      _$PageNftOrderItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PageNftOrderItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PageNftOrderItem> get serializer =>
      _$PageNftOrderItemSerializer();
}

class _$PageNftOrderItemSerializer
    implements PrimitiveSerializer<PageNftOrderItem> {
  @override
  final Iterable<Type> types = const [PageNftOrderItem, _$PageNftOrderItem];

  @override
  final String wireName = r'PageNftOrderItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PageNftOrderItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(NftOrderItem)]),
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
    PageNftOrderItem object, {
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
    required PageNftOrderItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NftOrderItem)]),
          ) as BuiltList<NftOrderItem>;
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
  PageNftOrderItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PageNftOrderItemBuilder();
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
