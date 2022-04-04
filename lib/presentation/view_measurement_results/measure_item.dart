import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/presentation/view_measurement_results/measures_list.dart';

class MeasureItem extends StatelessWidget {
  final int index;
  MeasureItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(measuresList[index].measure_name),
        SizedBox(width: 20,),
        Text(measuresList[index].measure)
      ],
    );
  }
}
