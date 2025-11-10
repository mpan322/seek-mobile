import 'package:test/test.dart';
import 'package:seek_backend/seek_backend.dart';

/// tests for UsersApi
void main() {
  final instance = SeekBackend().getUsersApi();

  group(UsersApi, () {
    //Future usersControllerCreate(JsonObject body) async
    test('test usersControllerCreate', () async {
      // TODO
    });

    //Future usersControllerGetAllUsers() async
    test('test usersControllerGetAllUsers', () async {
      // TODO
    });

    //Future usersControllerGetUser(String id) async
    test('test usersControllerGetUser', () async {
      // TODO
    });

    //Future usersControllerSetProfilePic(JsonObject body) async
    test('test usersControllerSetProfilePic', () async {
      // TODO
    });

    //Future usersControllerSetUsername(JsonObject body) async
    test('test usersControllerSetUsername', () async {
      // TODO
    });
  });
}
