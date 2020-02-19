import 'package:hive/hive.dart';
part 'auth_model.g.dart';

@HiveType(typeId: 0)
class AuthModel extends HiveObject {
  AuthModel(this.accessToken);

  @HiveField(0)
  String accessToken;
}
