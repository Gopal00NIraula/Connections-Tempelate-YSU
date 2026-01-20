import 'package:flutter/material.dart';
import 'package:ysu_connection/screens/signup_screen.dart';
import 'package:ysu_connection/widgets/feature_card.dart';
import 'package:ysu_connection/widgets/button.dart';
import 'package:ysu_connection/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2F3640), Color(0xFF3A3F47), Color(0xFF4A3F32)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(77, 255, 255, 255),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/YSU-Logo.png'),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Youngstown',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'CONNECTION',
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.5,
                            color: Color(0xFFFFB703),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 48),

                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your City.\n',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Your People.',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffb703),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'Connect with amazing people in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.4,
                  ),
                ),
                const Text(
                  'Youngstown State University. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(179, 255, 136, 136),
                    height: 1.4,
                  ),
                ),
                const Text(
                  'Make friends, find opportunities, build community.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 32),

                const FeatureCard(
                  icon: Icons.people,
                  text: 'Meet local people',
                ),
                const FeatureCard(
                  icon: Icons.location_on,
                  text: 'Explore your city',
                ),
                const FeatureCard(
                  icon: Icons.auto_awesome,
                  text: 'Build real connections',
                ),

                const SizedBox(height: 24),

                Button(
                  text: 'Get Started',
                  icon: Icons.arrow_right,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                ),
                SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Already have an account?',
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
      ),
    );
  }
}
