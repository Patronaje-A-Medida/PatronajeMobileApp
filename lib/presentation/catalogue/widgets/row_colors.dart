import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/utils/extensions/hex_color.dart';

class RowColors extends StatefulWidget {
  final List<String> colors;
  final Function(String)? onSelectColor;
  //final
  const RowColors({
    Key? key,
    required this.colors,
    required this.onSelectColor,
  }) : super(key: key);

  @override
  State<RowColors> createState() => _RowColorsState();
}

class _RowColorsState extends State<RowColors> {
  int selectedIndex = 0;

  @override
  void initState() {
    if (widget.onSelectColor != null) {
      widget.onSelectColor!(widget.colors[0]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.colors.length, (index) {
        return InkWell(
          onTap: () {
            setState(() {
              widget.onSelectColor!(widget.colors[index]);
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
