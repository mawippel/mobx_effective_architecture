import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

abstract class HiveService {
  static Future init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
  }

  Future<Box> openBox(String boxName);

  dynamic get(Box box, String key);
}
