import 'package:flutter/material.dart';


import '../widget/profile_screen_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileScreenWidget(),
    );
  }
}

