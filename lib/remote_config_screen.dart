import 'package:flutter/material.dart';
import 'package:remote_config_practice/remote_config_controller.dart';

class RemoteConfigScreen extends StatefulWidget {
  const RemoteConfigScreen({super.key});

  @override
  State<RemoteConfigScreen> createState() => _RemoteConfigScreenState();
}

class _RemoteConfigScreenState extends State<RemoteConfigScreen> {
  final _controller=RemoteConfigController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListenableBuilder(
          listenable: _controller,
          builder:(context,_){
            return Text(
              "Remote Config value:\n${_controller.value}",
              textAlign: TextAlign.center,
            );
          } ,
        ),
      ),
    );
  }
}
