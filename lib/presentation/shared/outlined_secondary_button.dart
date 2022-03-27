import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';

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
          color: Palette.green,
        ),
      ),
      style: OutlinedButton.styleFrom(
        primary: Palette.green,
        minimumSize: minimunSize,
        side: BorderSide(
          width: 0.5,
          color: Palette.green.shade500,
        ),
      ),
    );
  }
}
