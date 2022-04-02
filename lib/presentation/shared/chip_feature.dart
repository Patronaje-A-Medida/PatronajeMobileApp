import 'package:flutter/material.dart';

class ChipFeature extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  const ChipFeature({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 12, color: textColor),
        ),
      ),
    );
  }
}
