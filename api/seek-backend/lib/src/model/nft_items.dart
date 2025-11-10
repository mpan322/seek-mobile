//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_items.g.dart';

/// NftItems
///
/// Properties:
/// * [total] - Number of items were found by request
/// * [items] - List of found items
/// * [continuation] - Continuation token to paginate items search result
@BuiltValue()
abstract class NftItems implements Built<NftItems, NftItemsBuilder> {
  /// Number of items were found by request
  @BuiltValueField(wireName: r'total')
  int get total;

  /// List of found items
  @BuiltValueField(wireName: r'items')
  BuiltList<NftItem> get items;

  /// Continuation token to paginate items search result
  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  NftItems._();

  factory NftItems([void updates(NftItemsBuilder b)]) = _$NftItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItems> get serializer => _$NftItemsSerializer();
}

class _$NftItemsSerializer implements PrimitiveSerializer<NftItems> {
  @override
  final Iterable<Type> types = const [NftItems, _$NftItems];

  @override
  final String wireName = r'NftItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(NftItem)]),
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
    NftItems object, {
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
    required NftItemsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NftItem)]),
          ) as BuiltList<NftItem>;
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
  NftItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemsBuilder();
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
