import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for NftOrderItemControllerApi
void main() {
  final instance = SeekBackend().getNftOrderItemControllerApi();

  group(NftOrderItemControllerApi, () {
    //Future<PageNftOrderItem> getNftOrderAllItems({ String continuation, int size, bool showDeleted, int lastUpdatedFrom, int lastUpdatedTo, bool includeMeta }) async
    test('test getNftOrderAllItems', () async {
      // TODO
    });

    //Future<NftOrderItem> getNftOrderItemById(String itemId, { bool includeMeta }) async
    test('test getNftOrderItemById', () async {
      // TODO
    });

    //Future<NftItemMeta> getNftOrderItemMetaById(String itemId) async
    test('test getNftOrderItemMetaById', () async {
      // TODO
    });

    //Future<PageNftOrderItem> getNftOrderItemsByCollection(String collection, { String continuation, int size, bool includeMeta }) async
    test('test getNftOrderItemsByCollection', () async {
      // TODO
    });

    //Future<PageNftOrderItem> getNftOrderItemsByCreator(String creator, { String continuation, int size, bool includeMeta }) async
    test('test getNftOrderItemsByCreator', () async {
      // TODO
    });

    //Future<PageNftOrderItem> getNftOrderItemsByOwner(String owner, { String continuation, int size, bool includeMeta }) async
    test('test getNftOrderItemsByOwner', () async {
      // TODO
    });

    //Future<LazyNft> getNftOrderLazyItemById(String itemId) async
    test('test getNftOrderLazyItemById', () async {
      // TODO
    });
  });
}
