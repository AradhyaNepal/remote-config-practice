import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:remote_config_practice/firebase_options.dart';

class RemoteConfigRepo {
  static final remoteConfig = FirebaseRemoteConfig.instance;

  static const String maxAddressLength="maxAddressLength";
  static Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
    ));
    await remoteConfig.setDefaults(const {
      maxAddressLength: 45,
    });
    await remoteConfig.fetchAndActivate();
    remoteConfig.onConfigUpdated.listen((event) async {
      await remoteConfig.activate();
      // Use the new config values here.
    });
  }
}
