import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:remote_config_practice/default_value.dart';
import 'package:remote_config_practice/firebase_options.dart';

class RemoteConfigRepo {
  static final remoteConfig = FirebaseRemoteConfig.instance;



  static Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
    ));
    await remoteConfig.setDefaults(defaultConfigJSON);
    await remoteConfig.fetchAndActivate();
  }
}
