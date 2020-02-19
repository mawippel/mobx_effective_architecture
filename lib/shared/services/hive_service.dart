import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  static Future init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
  }

  static Future<Box> openBox(String boxName) async {
    return Hive.openBox(boxName);
  }

  static dynamic get(Box box, String key) {
    return box.get(key);
  }
}
