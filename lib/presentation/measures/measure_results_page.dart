import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MeasureResultsPage extends StatelessWidget {
  const MeasureResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados'),
      ),
      body: Center(
        child: Lottie.asset('assets/animations/calculate_loading.json'),
      ),
    );
  }
}
