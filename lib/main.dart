import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobx_effective_architecture/shared/services/hive_service.dart';
import 'main_dev.dart';
import 'main_prod.dart';

Future main() async {
  await DotEnv().load();
  final isDev = DotEnv().env['IS_DEVELOPMENT'];

  await HiveService.init();

  if (isDev == 'False') {
    await runProd();
  } else {
    await runDev();
  }
}
