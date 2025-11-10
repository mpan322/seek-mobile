import 'package:test/test.dart';
import 'package:seek_backend/seek_backend.dart';

/// tests for UploadApi
void main() {
  final instance = SeekBackend().getUploadApi();

  group(UploadApi, () {
    //Future uploadControllerDownload(String key) async
    test('test uploadControllerDownload', () async {
      // TODO
    });

    //Future uploadControllerGetPresignedUrl(String filename, String fileType, String folder) async
    test('test uploadControllerGetPresignedUrl', () async {
      // TODO
    });
  });
}
