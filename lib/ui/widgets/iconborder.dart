import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color? backgroundColor;
  final IconData? icon;
  final Color? iconColor;
  final Function()? onTap;
  final bool? isBorder;
  final Text? text;

  const IconContainer({
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
        width: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12),
        ),
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
