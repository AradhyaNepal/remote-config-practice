import 'package:flutter/material.dart';
import 'package:remote_config_practice/common/repository/base_local_repo.dart';
import 'package:remote_config_practice/features/register/repository/remote_config_repo.dart';
import 'package:remote_config_practice/features/register/view/register_screen.dart';

void main() async {
  await RemoteConfigRepo.setup();
  await BaseLocalRepo.initAll();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote Config Firebase',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RegisterScreen(),
    );
  }
}
