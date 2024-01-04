import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remote_config_practice/features/register/view/widgets/register_progress_bar.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const RegisterProgressBar(),
            SizedBox(height: 25.h,)
          ],
        ),
      ),
    );
  }
}
