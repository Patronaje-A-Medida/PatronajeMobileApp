import 'package:flutter/material.dart';

class FilledPrimaryButton extends StatelessWidget {
  final String text;
  final Size minimunSize;
  final VoidCallback? onPressed;

  const FilledPrimaryButton({
    Key? key,
    required this.text,
    this.minimunSize = const Size(64, 36),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: minimunSize,
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
