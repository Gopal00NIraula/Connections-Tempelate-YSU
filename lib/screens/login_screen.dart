import 'package:flutter/material.dart';
import 'package:ysu_connection/screens/signup_screen.dart';
import 'package:ysu_connection/widgets/button.dart';
import 'package:ysu_connection/widgets/hero_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

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
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Button(
                        text: 'Sign In',
                        icon: Icons.login,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0xffffb703),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
