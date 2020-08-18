import 'package:get_it/get_it.dart';
import 'package:mobx_effective_architecture/shared/services/auth_service.dart';
import 'package:mobx_effective_architecture/shared/services/hive_service.dart';

class AuthServiceImpl implements AuthService {
  final HiveService hiveService = GetIt.I.get<HiveService>();

  @override
  Future saveNewToken() async {
    final box = await hiveService.openBox('authBox');
    await box.put('access_token', '1bjawef24623423hasd1BafJGF4123');
  }
}
