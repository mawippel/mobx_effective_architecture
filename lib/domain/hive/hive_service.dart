import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  static Future init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
  }

  static Future<Box> newBox(String boxName) async {
    return Hive.openBox('authBox');
  }

  static dynamic get(String boxName, String key) {
    final box = Hive.box(boxName);
    return box.get(key);
  }
}
