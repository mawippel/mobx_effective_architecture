import 'package:mobx_effective_architecture/shared/services/hive_service.dart';

class AuthService {
  static Future saveNewToken() async {
    final box = await HiveService.openBox('authBox');
    await box.put('access_token', '1bjawef24623423hasd1BafJGF4123');
    // print(HiveService.get('authBox', 'access_token'));
  }
}
