import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for NftOwnershipControllerApi
void main() {
  final instance = SeekBackend().getNftOwnershipControllerApi();

  group(NftOwnershipControllerApi, () {
    //Future<NftOwnerships> getNftAllOwnerships({ String continuation, int size }) async
    test('test getNftAllOwnerships', () async {
      // TODO
    });

    //Future<NftOwnership> getNftOwnershipById(String ownershipId) async
    test('test getNftOwnershipById', () async {
      // TODO
    });

    //Future<NftOwnerships> getNftOwnershipsByItem(String contract, String tokenId, { String continuation, int size }) async
    test('test getNftOwnershipsByItem', () async {
      // TODO
    });
  });
}
