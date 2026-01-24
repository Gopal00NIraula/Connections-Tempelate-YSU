import 'package:flutter/material.dart';
import 'package:ysu_connection/widgets/hero_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                title: 'Welcome Back!',
                subTitle: 'Sign in to continue your journey',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
