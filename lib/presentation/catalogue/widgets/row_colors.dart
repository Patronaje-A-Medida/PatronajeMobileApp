import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/utils/extensions/hex_color.dart';

class RowColors extends StatefulWidget {
  final List<String> colors;
  const RowColors({Key? key, required this.colors}) : super(key: key);

  @override
  State<RowColors> createState() => _RowColorsState();
}

class _RowColorsState extends State<RowColors> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.colors.length, (index) {
        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: HexColor.fromHex(widget.colors[index])),
            ),
            margin: const EdgeInsets.only(right: 8.0),
            width: 25,
            height: 25,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: selectedIndex == index
                  ? const EdgeInsets.all(2)
                  : const EdgeInsets.only(),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor.fromHex(widget.colors[index]),
              ),
            ),
          ),
        );
      }),
    );
  }
}
