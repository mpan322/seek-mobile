import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for GatewayControllerApi
void main() {
  final instance = SeekBackend().getGatewayControllerApi();

  group(GatewayControllerApi, () {
    //Future<BuiltList<LogEvent>> createGatewayPendingTransactions(CreateTransactionRequest createTransactionRequest) async
    test('test createGatewayPendingTransactions', () async {
      // TODO
    });
  });
}
