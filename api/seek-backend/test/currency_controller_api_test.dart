import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for CurrencyControllerApi
void main() {
  final instance = SeekBackend().getCurrencyControllerApi();

  group(CurrencyControllerApi, () {
    //Future<CurrencyRate> getCurrencyRate(String blockchain, String address, int at) async
    test('test getCurrencyRate', () async {
      // TODO
    });
  });
}
