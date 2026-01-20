// screens/login_screen.dart
import 'package:flutter/material.dart';

class HeroHeader extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subTitle;

  const HeroHeader({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 260,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF2F3640), Color(0xFF3A3F47), Color(0xFF4A3F32)],
            ),
          ),
          child: Row(
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
                  SizedBox(height: 100),
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
        ),
      ],
    );
  }
}
