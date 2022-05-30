import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/measures/records_measures_provider.dart';
import 'package:provider/provider.dart';

class HistoryMeasuresPage extends StatelessWidget {
  const HistoryMeasuresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recordsMeasuresProvider =
        Provider.of<RecordsMeasuresProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de medidas'),
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
      body: SafeArea(
        child: recordsMeasuresProvider.isLoading
            ? const Center(child: CircularProgressIndicator())
            : recordsMeasuresProvider.records.isEmpty
                ? const Center(
                    child: Text('Ud. no cuenta con un historial de medidas.'),
                  )
                : ListView.builder(
                    itemCount: recordsMeasuresProvider.records.length,
                    itemBuilder: (context, index) {
                      final data = recordsMeasuresProvider.records[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18.0,
                          vertical: 8.0,
                        ),
                        child: Card(
                          elevation: 8,
                          shadowColor: Colors.black45,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    /*child: CachedNetworkImage(
                                      height: 100,
                                      imageUrl:
                                          "https://images.email-platform.com/fundacionvsl/accesibility.jpeg",
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.contain,
                                        )),
                                      ),
                                    ),*/
                                    child: Image.asset(
                                        'assets/images/take_measure.png'),
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Altura: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                                '${data.height.toStringAsFixed(2)} cm'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Busto: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                                '${data.bust.toStringAsFixed(2)} cm'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Cintura: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                                '${data.waist.toStringAsFixed(2)} cm'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Cadera: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                                '${data.hip.toStringAsFixed(2)} cm'),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        Row(
                                          children: [
                                            const Text(
                                              'Fecha: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              recordsMeasuresProvider
                                                  .formatDateAtIndex(index),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))
                              ]),
                        ),
                      );
                    }),
      ),
    );
  }
}
