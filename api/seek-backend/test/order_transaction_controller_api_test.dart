import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for OrderTransactionControllerApi
void main() {
  final instance = SeekBackend().getOrderTransactionControllerApi();

  group(OrderTransactionControllerApi, () {
    // Create pending transaction for order
    //
    //Future<BuiltList<LogEvent>> createOrderPendingTransaction(CreateTransactionRequest createTransactionRequest) async
    test('test createOrderPendingTransaction', () async {
      // TODO
    });
  });
}
