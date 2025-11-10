import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for NftOrderLazyMintControllerApi
void main() {
  final instance = SeekBackend().getNftOrderLazyMintControllerApi();

  group(NftOrderLazyMintControllerApi, () {
    // Lazy mint of NFT
    //
    //Future<NftOrderItem> mintNftOrderAsset(LazyNft lazyNft) async
    test('test mintNftOrderAsset', () async {
      // TODO
    });
  });
}
