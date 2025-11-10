import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for NftTransactionControllerApi
void main() {
  final instance = SeekBackend().getNftTransactionControllerApi();

  group(NftTransactionControllerApi, () {
    // Create pending transaction for NFT
    //
    //Future<BuiltList<LogEvent>> createNftPendingTransaction(CreateTransactionRequest createTransactionRequest) async
    test('test createNftPendingTransaction', () async {
      // TODO
    });
  });
}
