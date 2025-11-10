import 'package:test/test.dart';
import 'package:seek_backend/seek_backend.dart';

/// tests for AppApi
void main() {
  final instance = SeekBackend().getAppApi();

  group(AppApi, () {
    //Future appControllerGetHello() async
    test('test appControllerGetHello', () async {
      // TODO
    });
  });
}
