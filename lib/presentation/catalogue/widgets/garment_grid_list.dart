import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/garments/garment_provider.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/widgets/garment_list_item.dart';
import 'package:provider/provider.dart';

class GarmentGridList extends StatelessWidget {
  const GarmentGridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GarmentProvider>(builder: (context, garmentProvider, chil) {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 18,
          crossAxisSpacing: 18,
          childAspectRatio: 0.65,
        ),
        itemCount: garmentProvider.garments.length,
        itemBuilder: (context, index) {
          final garment = garmentProvider.garments[index];
          if (garment.images.isNotEmpty) {
            return GarmentListItem(garment: garment);
          } else {
            return Container();
          }
        },
      );
    });
  }
}
