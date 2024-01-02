import 'package:flutter/material.dart';
import 'package:remote_config_practice/remote_config_repo.dart';

class RemoteConfigScreen extends StatelessWidget {
  const RemoteConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(RemoteConfigRepo.remoteConfig.getString(RemoteConfigRepo.maxAddressLength)),
      ),
    );
  }
}
