import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/secure_storage.dart';

class AuthService {
  final String baseUrl = 'http://localhost:5173';

  Future<bool> login(String email, String password) async {
    final url = Uri.parse('$baseUrl/auth/login');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json', "platform": "mobile"},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      await SecureStorage.saveToken('accessToken', data['access_token']);
      await SecureStorage.saveToken('refreshToken', data['refresh_token']);
      return true;
    }
    return false;
  }
}
