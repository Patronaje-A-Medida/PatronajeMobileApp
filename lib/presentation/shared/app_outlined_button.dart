import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  final String text;
  final Size minimunSize;
  final VoidCallback? onPressed;
  final Color? color;

  const AppOutlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.minimunSize = const Size(64, 36),
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
      ),
      style: OutlinedButton.styleFrom(
        primary: color ?? Theme.of(context).colorScheme.primary,
        minimumSize: minimunSize,
        side: BorderSide(
          width: 0.8,
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
