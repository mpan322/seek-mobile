import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for NftLazyMintControllerApi
void main() {
  final instance = SeekBackend().getNftLazyMintControllerApi();

  group(NftLazyMintControllerApi, () {
    // Lazy mint of NFT
    //
    //Future<NftItem> mintNftAsset(LazyNft lazyNft) async
    test('test mintNftAsset', () async {
      // TODO
    });
  });
}
