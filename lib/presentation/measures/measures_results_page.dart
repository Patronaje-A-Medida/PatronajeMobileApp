import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:patronaje_mobile_app/business/basket/basket_provider.dart';
import 'package:patronaje_mobile_app/business/measures/take_measures_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:provider/provider.dart';

class MeasuresResultsPage extends StatelessWidget {
  const MeasuresResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final takeMeasuresProvider = Provider.of<TakeMeasuresProvider>(context);
    final basicMeasures = takeMeasuresProvider.basicMeasures;
    final otherMeasures = takeMeasuresProvider.allMeasures;
    final sizeH = MediaQuery.of(context).size.height;
    Provider.of<BasketProvider>(context).canMakeOrder = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: !takeMeasuresProvider.alreadyMeasures
          ? Center(
              child: Column(
                children: [
                  Lottie.asset('assets/animations/calculate_loading.json'),
                  const Text('Calculando . . .',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/basic_measures.png',
                      height: sizeH * 0.4,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text('Medidas en centímetros'),
                  ),
                  Row(
                    children: List.generate(basicMeasures.length, (index) {
                      return Expanded(
                        child: _buildBasicMeasure(
                          measureLabel: basicMeasures[index].label,
                          measureSize: basicMeasures[index].value,
                          number: index + 1,
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: ListView(children: [
                      DataTable(
                        columns: const [
                          DataColumn(label: Text('Sección')),
                          DataColumn(label: Text('Medida')),
                        ],
                        rows: otherMeasures.map((e) {
                          return DataRow(cells: [
                            DataCell(Text(e.nameMeasurement)),
                            DataCell(Text(e.value.toStringAsFixed(2) + ' cm')),
                          ]);
                        }).toList(),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildBasicMeasure(
      {required String measureLabel,
      required double measureSize,
      required int number}) {
    return Column(
      children: [
        Text(
          measureLabel,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Palette.pink,
            fontSize: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: CircleAvatar(
            child: Text(
              number.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Palette.pink,
            foregroundColor: Colors.white,
          ),
        ),
        Text(measureSize.toStringAsFixed(2)),
      ],
    );
  }
}
