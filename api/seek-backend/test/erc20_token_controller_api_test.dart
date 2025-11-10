import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for Erc20TokenControllerApi
void main() {
  final instance = SeekBackend().getErc20TokenControllerApi();

  group(Erc20TokenControllerApi, () {
    //Future<Erc20Token> getErc20TokenById(String contract) async
    test('test getErc20TokenById', () async {
      // TODO
    });
  });
}
