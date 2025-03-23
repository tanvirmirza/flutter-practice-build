

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color iconColor;
  final Color bgColor;
  final double borderRadius;
  final double btnSize;

  CustomButton(
      {required this.text,
      required this.onPressed,
      this.icon,
      this.textColor = Colors.white,
      this.iconColor = Colors.white,
      this.bgColor = Colors.deepPurple,
      this.btnSize = 300,
      this.borderRadius = 8.0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(64, 36),
        maximumSize: Size.infinite,
        fixedSize: Size(btnSize, 15),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              width: 8,
            ),
          ],
          Text(text, style: TextStyle(color: textColor))
        ],
      ),
    );
  }
}