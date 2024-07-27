import 'package:shared_preferences/shared_preferences.dart';

class CredentialsStorage {
  static const String _encryptionSecretKey = 'encryptionSecret';
  static const String _clientIdKey = 'clientId';

  static Future<String?> getEncryptionSecret() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_encryptionSecretKey);
  }

  static Future<String?> getClientId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_clientIdKey);
  }
}
