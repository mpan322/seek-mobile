import 'package:test/test.dart';
import 'package:seek_backend/seek_backend.dart';

/// tests for AuthApi
void main() {
  final instance = SeekBackend().getAuthApi();

  group(AuthApi, () {
    //Future authControllerConfirmPasswordReset(ConfirmPasswordResetDto confirmPasswordResetDto) async
    test('test authControllerConfirmPasswordReset', () async {
      // TODO
    });

    //Future authControllerCurrentUser() async
    test('test authControllerCurrentUser', () async {
      // TODO
    });

    //Future authControllerForgotPassword(JsonObject body) async
    test('test authControllerForgotPassword', () async {
      // TODO
    });

    //Future authControllerGoogleAuth() async
    test('test authControllerGoogleAuth', () async {
      // TODO
    });

    //Future authControllerGoogleAuthCallback() async
    test('test authControllerGoogleAuthCallback', () async {
      // TODO
    });

    //Future authControllerLogin() async
    test('test authControllerLogin', () async {
      // TODO
    });

    //Future authControllerLogout() async
    test('test authControllerLogout', () async {
      // TODO
    });

    //Future authControllerRefreshToken() async
    test('test authControllerRefreshToken', () async {
      // TODO
    });

    //Future authControllerSignup(JsonObject body) async
    test('test authControllerSignup', () async {
      // TODO
    });

    //Future authControllerVerifyEmail(JsonObject body) async
    test('test authControllerVerifyEmail', () async {
      // TODO
    });
  });
}
