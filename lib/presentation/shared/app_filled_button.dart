import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  final String text;
  final Size minimunSize;
  final VoidCallback? onPressed;
  final Color? color;

  const AppFilledButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.minimunSize = const Size(64, 36),
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: minimunSize,
        primary: color ?? Theme.of(context).colorScheme.primary,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
