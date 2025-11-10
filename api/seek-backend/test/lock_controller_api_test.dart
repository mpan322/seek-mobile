import 'package:test/test.dart';
import 'package:seek-backend/seek-backend.dart';

/// tests for LockControllerApi
void main() {
  final instance = SeekBackend().getLockControllerApi();

  group(LockControllerApi, () {
    //Future<Lock> createLock(String itemId, LockForm lockForm) async
    test('test createLock', () async {
      // TODO
    });

    //Future<String> getLockContent(String itemId, SignatureForm signatureForm) async
    test('test getLockContent', () async {
      // TODO
    });

    //Future<bool> isUnlockable(String itemId) async
    test('test isUnlockable', () async {
      // TODO
    });
  });
}
