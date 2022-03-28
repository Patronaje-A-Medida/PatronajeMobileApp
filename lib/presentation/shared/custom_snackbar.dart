import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';

SnackBar makeSnackBar({required AlertType type, required String message}) {
  return SnackBar(
    content: Row(
      children: [
        getIconByType(type),
        const SizedBox(width: 12),
        Text(message),
      ],
    ),
    backgroundColor: Colors.grey.shade800,
  );
}

Icon getIconByType(AlertType type) {
  switch (type) {
    case AlertType.success:
      return Icon(
        Icons.check,
        color: Palette.green,
      );
    case AlertType.warning:
      return Icon(
        Icons.warning_rounded,
        color: Colors.yellow[700],
      );
    case AlertType.error:
      return const Icon(Icons.close, color: Colors.red);
  }
}
