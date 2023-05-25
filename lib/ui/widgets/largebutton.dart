import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final String text;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;

  const LargeButton({
    super.key,
    this.backgroundColor,
    required this.text,
    this.textColor,
    this.onTap,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 16,
              color: Colors.transparent,
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15, color: textColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
