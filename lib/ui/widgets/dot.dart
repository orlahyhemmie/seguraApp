import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  const Dots({
    super.key,
    this.width = 5,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: width,
      height: 8,
    );
  }
}
