//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:seek_backend/src/model/order.dart';
import 'package:seek_backend/src/model/item_transfer.dart';
import 'package:seek_backend/src/model/nft_item_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_order_item.g.dart';

/// NftOrderItem
///
/// Properties:
/// * [id] - Item identifier, has format \"token:tokenId\"
/// * [contract]
/// * [tokenId]
/// * [unlockable] - Was item locked
/// * [creators]
/// * [supply]
/// * [lazySupply]
/// * [owners] - Owners of the target items
/// * [royalties] - List of royalties
/// * [date]
/// * [pending]
/// * [totalStock]
/// * [sellers]
/// * [meta]
/// * [bestSellOrder]
/// * [bestBidOrder]
@BuiltValue()
abstract class NftOrderItem
    implements Built<NftOrderItem, NftOrderItemBuilder> {
  /// Item identifier, has format \"token:tokenId\"
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  /// Was item locked
  @BuiltValueField(wireName: r'unlockable')
  bool get unlockable;

  @BuiltValueField(wireName: r'creators')
  BuiltList<ModelPart> get creators;

  @BuiltValueField(wireName: r'supply')
  String get supply;

  @BuiltValueField(wireName: r'lazySupply')
  String get lazySupply;

  /// Owners of the target items
  @BuiltValueField(wireName: r'owners')
  BuiltList<String> get owners;

  /// List of royalties
  @BuiltValueField(wireName: r'royalties')
  BuiltList<ModelPart> get royalties;

  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'pending')
  BuiltList<ItemTransfer> get pending;

  @BuiltValueField(wireName: r'totalStock')
  String get totalStock;

  @BuiltValueField(wireName: r'sellers')
  int get sellers;

  @BuiltValueField(wireName: r'meta')
  NftItemMeta? get meta;

  @BuiltValueField(wireName: r'bestSellOrder')
  Order? get bestSellOrder;

  @BuiltValueField(wireName: r'bestBidOrder')
  Order? get bestBidOrder;

  NftOrderItem._();

  factory NftOrderItem([void updates(NftOrderItemBuilder b)]) = _$NftOrderItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderItem> get serializer => _$NftOrderItemSerializer();
}

class _$NftOrderItemSerializer implements PrimitiveSerializer<NftOrderItem> {
  @override
  final Iterable<Type> types = const [NftOrderItem, _$NftOrderItem];

  @override
  final String wireName = r'NftOrderItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
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
    yield r'unlockable';
    yield serializers.serialize(
      object.unlockable,
      specifiedType: const FullType(bool),
    );
    yield r'creators';
    yield serializers.serialize(
      object.creators,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
    yield r'supply';
    yield serializers.serialize(
      object.supply,
      specifiedType: const FullType(String),
    );
    yield r'lazySupply';
    yield serializers.serialize(
      object.lazySupply,
      specifiedType: const FullType(String),
    );
    yield r'owners';
    yield serializers.serialize(
      object.owners,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'royalties';
    yield serializers.serialize(
      object.royalties,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'pending';
    yield serializers.serialize(
      object.pending,
      specifiedType: const FullType(BuiltList, [FullType(ItemTransfer)]),
    );
    yield r'totalStock';
    yield serializers.serialize(
      object.totalStock,
      specifiedType: const FullType(String),
    );
    yield r'sellers';
    yield serializers.serialize(
      object.sellers,
      specifiedType: const FullType(int),
    );
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(NftItemMeta),
      );
    }
    if (object.bestSellOrder != null) {
      yield r'bestSellOrder';
      yield serializers.serialize(
        object.bestSellOrder,
        specifiedType: const FullType(Order),
      );
    }
    if (object.bestBidOrder != null) {
      yield r'bestBidOrder';
      yield serializers.serialize(
        object.bestBidOrder,
        specifiedType: const FullType(Order),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderItem object, {
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
    required NftOrderItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
        case r'unlockable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unlockable = valueDes;
          break;
        case r'creators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.creators.replace(valueDes);
          break;
        case r'supply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supply = valueDes;
          break;
        case r'lazySupply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lazySupply = valueDes;
          break;
        case r'owners':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.owners.replace(valueDes);
          break;
        case r'royalties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.royalties.replace(valueDes);
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ItemTransfer)]),
          ) as BuiltList<ItemTransfer>;
          result.pending.replace(valueDes);
          break;
        case r'totalStock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalStock = valueDes;
          break;
        case r'sellers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sellers = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemMeta),
          ) as NftItemMeta;
          result.meta.replace(valueDes);
          break;
        case r'bestSellOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Order),
          ) as Order;
          result.bestSellOrder.replace(valueDes);
          break;
        case r'bestBidOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Order),
          ) as Order;
          result.bestBidOrder.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOrderItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderItemBuilder();
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
