import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:remote_config_practice/remote_config_repo.dart';

class RemoteConfigController with ChangeNotifier {
  String get value => RemoteConfigRepo.remoteConfig
      .getString(RemoteConfigRepo.maxAddressLength);
  StreamSubscription? _streamSubscription;

  RemoteConfigController() {
    _streamSubscription =
        RemoteConfigRepo.remoteConfig.onConfigUpdated.listen((event) {
          notifyListeners();
        });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}
