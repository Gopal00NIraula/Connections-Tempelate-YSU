// screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:ysu_connection/widgets/hero_header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,

        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeroHeader(
                imageAsset: 'assets/images/YSU-Logo.png',
                title: 'Join the Community!',
                subTitle: 'Create your account in seconds',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
