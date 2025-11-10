import 'package:test/test.dart';
import 'package:seek_backend/seek_backend.dart';

/// tests for ContactApi
void main() {
  final instance = SeekBackend().getContactApi();

  group(ContactApi, () {
    //Future contactControllerContact(JsonObject body) async
    test('test contactControllerContact', () async {
      // TODO
    });
  });
}
