import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              hintText: 'Typing Here..',
              controller: textController,
              isPassword: false,
              prefixIcon: Icons.text_fields,
              size: 30,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                textController.clear();
              },
              text: 'Click Here',
              // icon: Icons.abc,
              bgColor: Colors.green,
              borderRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}

// All Custom Widgets are here :

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

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final bool isPassword;
  final double size;

  CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.isPassword = false,
    this.size = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}


