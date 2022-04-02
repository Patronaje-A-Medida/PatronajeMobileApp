import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/shared/chip_feature.dart';

class RowFeatures extends StatelessWidget {
  final List<String> features;
  const RowFeatures({Key? key, required this.features}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(features.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ChipFeature(
            text: features[index],
            backgroundColor: getColorBackgroundByIndex(index),
            textColor: getColorTextByIndex(index),
          ),
        );
      }),
    );
  }

  Color getColorBackgroundByIndex(int index) {
    final rr = index % 3;
    if (rr == 1) return Palette.yellow.shade100;
    if (rr == 2) return Palette.orange.shade100;
    return Palette.green.shade100;
  }

  Color getColorTextByIndex(int index) {
    final rr = index % 3;
    if (rr == 1) return Palette.yellow.shade900;
    if (rr == 2) return Palette.orange.shade700;
    return Palette.green.shade900;
  }
}
