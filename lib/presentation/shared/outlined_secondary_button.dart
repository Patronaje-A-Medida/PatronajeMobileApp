import 'package:flutter/material.dart';

class OutlinedSecondaryButton extends StatelessWidget {
  final String text;
  final Size minimunSize;
  final VoidCallback onPressed;

  const OutlinedSecondaryButton({
    Key? key,
    required this.text,
    this.minimunSize = const Size(64, 36),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      style: OutlinedButton.styleFrom(
        primary: Theme.of(context).colorScheme.secondary,
        minimumSize: minimunSize,
        side: BorderSide(
          width: 0.8,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
