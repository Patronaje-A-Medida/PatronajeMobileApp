import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/shared/chip_feature.dart';

class ButtonStatus extends StatelessWidget {
  final String status;

  const ButtonStatus({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 130.0),
      child: ChipFeature(
        text: status,
        backgroundColor: getColorBackgroundByName(status),
        textColor: getColorTextByName(status),
      ),
    );
  }

  Color getColorBackgroundByName(String status) {
    if (status == 'En Progreso') return Palette.yellow.shade100;
    if (status == 'Sin Atender') return Palette.orange.shade100;
    return Palette.green.shade100;
  }

  Color getColorTextByName(String status) {
    if (status == 'En Progreso') return Palette.yellow.shade900;
    if (status == 'Sin Atender') return Palette.orange.shade700;
    return Palette.green.shade900;
  }
}
