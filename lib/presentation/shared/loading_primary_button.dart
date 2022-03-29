import 'package:flutter/material.dart';

class LoadingPrimaryButton extends StatelessWidget {
  final Size minimunSize;
  final Color? color;
  const LoadingPrimaryButton({
    Key? key,
    this.minimunSize = const Size(64, 36),
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: OutlinedButton.styleFrom(
        minimumSize: minimunSize,
        side: BorderSide(
          width: 0.8,
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
      ),
      child: SizedBox(
        height: 26,
        width: 26,
        child: CircularProgressIndicator(
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
