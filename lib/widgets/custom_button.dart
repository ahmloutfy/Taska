import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final Color buttonColor;
  final Icon icon;
  final void Function() press;

  const CustomButton({
    super.key, required this.margin, required this.buttonColor, required this.icon, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 35,
      width: 45,
      child: IconButton(
        padding:
        const EdgeInsets.only(bottom: 2),
        onPressed: press,
        icon: icon,
        color: Colors.white,
      ),
    );
  }
}