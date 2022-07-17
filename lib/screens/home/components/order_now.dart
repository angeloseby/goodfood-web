import 'package:flutter/material.dart';
import 'package:flutter_website/constant.dart';

class OrderNowButton extends StatelessWidget {
  final String title;
  final Function press;
  final Color textColor;
  final Color buttonColor;
  final Size buttonSize;
  final double fontSize;
  const OrderNowButton(
      {Key? key,
      this.buttonColor = kPrimaryColor,
      this.textColor = Colors.black,
      required this.press,
      required this.title,
      this.fontSize = 12,
      this.buttonSize = const Size(130, 40)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        press();
      },
      style: TextButton.styleFrom(
        fixedSize: buttonSize,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: "GoogleSansDisplay",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
