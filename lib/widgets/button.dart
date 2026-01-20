import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 70),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xffffb703),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Icon(icon, size: 32),
          ],
        ),
      ),
    );
  }
}
