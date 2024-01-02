import 'dart:async';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:remote_config_practice/default_value.dart';
import 'package:remote_config_practice/remote_config.dart';
import 'package:remote_config_practice/remote_config_repo.dart';

class RemoteConfigController with ChangeNotifier {
  late RemoteConfig _value=_getValue();

  RemoteConfig get value=>_value;
  StreamSubscription? _streamSubscription;

  RemoteConfigController() {
    _streamSubscription =
        RemoteConfigRepo.remoteConfig.onConfigUpdated.listen((event) async{
          await RemoteConfigRepo.remoteConfig.activate();
          _value=_getValue();
          notifyListeners();
        });
  }
  RemoteConfig _getValue() {
    try{
      return RemoteConfig.fromJson(RemoteConfigRepo.remoteConfig.getAll());
    }catch(e,s){
      //Todo: Show toast only on debug
      log(e.toString());
      log(s.toString());
      return RemoteConfig.fromJson(defaultConfigJSON);
    }
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}
