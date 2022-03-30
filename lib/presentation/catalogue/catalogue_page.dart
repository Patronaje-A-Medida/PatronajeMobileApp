import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/garments/garment_provider.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/widgets/garment_grid_list.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/widgets/search_filter_bar.dart';
import 'package:provider/provider.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final garmentProvider = Provider.of<GarmentProvider>(context);

    return Column(
      children: [
        // parte clara
        Container(
          padding: const EdgeInsets.only(
            top: 18.0,
            right: 18.0,
            left: 18.0,
            bottom: 8.0,
          ),
          child: Column(
            children: [
              const SearchAndFilterBar(),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Divider(
                  thickness: 1,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ),

        //parte con fondo gris
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            color: Colors.grey[50],
            child: garmentProvider.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const GarmentGridList(),
          ),
        ),
      ],
    );
  }
}
