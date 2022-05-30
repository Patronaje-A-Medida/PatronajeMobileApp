import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HistoryMeasuresPage extends StatelessWidget {
  const HistoryMeasuresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Card(
                elevation: 8,
                shadowColor: Colors.black45,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CachedNetworkImage(
                            height: 100,
                            imageUrl:
                                "https://images.email-platform.com/fundacionvsl/accesibility.jpeg",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.contain,
                              )),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              const Text('Medidas en centímetros'),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Altura: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text('1.60'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Busto: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text('0.80'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Cintura: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text('0.69'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Cadera: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text('0.90'),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Fecha: ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text('2022-03-29'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ))
                    ]),
              );
            }),
      ),
    );
  }
}
