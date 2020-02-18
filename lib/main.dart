import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'main_dev.dart';
import 'main_prod.dart';

Future main() async {
  await DotEnv().load('.env');
  final String isDev = DotEnv().env['IS_DEVELOPMENT'];
  
  if (isDev == 'False') {
    await runProd();
  } else {
    await runDev();
  }
}