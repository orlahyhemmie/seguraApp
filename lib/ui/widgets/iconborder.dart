import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color? backgroundColor;
  final IconData? icon;
  final Color? iconColor;
  final Function()? onTap;
  final bool? isBorder;
  final Text? text;

  IconContainer({
    super.key,
    this.backgroundColor,
    this.onTap,
    this.isBorder,
    this.icon,
    this.iconColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white24),
        ),
        child: Center(
          child: Icon(icon, color: iconColor, size: 15),
        ),
      ),
    );
  }
}
