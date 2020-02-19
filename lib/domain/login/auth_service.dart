import 'package:mobx_effective_architecture/domain/hive/hive_service.dart';

class AuthService {
  static Future saveNewToken() async {
    final box = await HiveService.newBox('authBox');
    await box.put('access_token', '1bjawef24623423hasd1BafJGF4123');
    // It could be also saved using an Object
    // await box.add(AuthModel('1bjawef24623423hasd1BafJGF4123'));
  }
}
