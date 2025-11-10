import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for NftActivityControllerApi
void main() {
  final instance = SeekBackend().getNftActivityControllerApi();

  group(NftActivityControllerApi, () {
    //Future<NftActivities> getNftActivities(NftActivityFilter nftActivityFilter, { String continuation, int size, ActivitySort sort }) async
    test('test getNftActivities', () async {
      // TODO
    });
  });
}
