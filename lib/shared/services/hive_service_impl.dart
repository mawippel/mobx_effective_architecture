import 'package:hive/hive.dart';
import 'package:mobx_effective_architecture/shared/services/hive_service.dart';

class HiveServiceImpl implements HiveService {
  @override
  Future<Box> openBox(String boxName) async {
    return Hive.openBox(boxName);
  }

  @override
  dynamic get(Box box, String key) {
    return box.get(key);
  }
}
