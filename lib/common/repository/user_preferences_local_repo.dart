import 'package:remote_config_practice/common/repository/base_local_repo.dart';

class UserPreferencesLocalRepo extends BaseLocalRepo {
  static final UserPreferencesLocalRepo _instance =
      UserPreferencesLocalRepo._();

  UserPreferencesLocalRepo._() : super("UserPreferencesBox");

  factory UserPreferencesLocalRepo() => _instance;

  static const String darkModeKey = "darkModeKey";

  bool get isDarkMode {
    return get(darkModeKey) ?? false;
  }

  void toggleDarkMode(bool newValue) {
    put(darkModeKey, newValue);
  }
}
