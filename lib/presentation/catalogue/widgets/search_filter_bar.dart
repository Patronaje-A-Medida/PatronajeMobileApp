import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/garments/garment_provider.dart';
import 'package:patronaje_mobile_app/business/shared/configuration_types_provider.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_outlined_button.dart';
import 'package:provider/provider.dart';

class SearchAndFilterBar extends StatelessWidget {
  const SearchAndFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*final garmentProvider = Provider.of<GarmentProvider>(context);
    final typesProvider = Provider.of<ConfigurationTypesProvider>(context);*/
    return Consumer2<GarmentProvider, ConfigurationTypesProvider>(
      builder: (context, garmentProvider, typesProvider, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
                hintText: 'Buscar prenda',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) =>
                  garmentProvider.searchGarmentsByQuery(value),
            ),
          ),
          const SizedBox(width: 18.0),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            child: const Icon(Icons.filter_list_rounded),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) {
                    return StatefulBuilder(builder: (context, setModalState) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          //mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Categorias',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2,
                                  childAspectRatio: 5,
                                ),
                                itemCount: typesProvider.categories.length,
                                itemBuilder: (context, index) {
                                  final item = typesProvider.categories[index];
                                  return CheckboxListTile(
                                    contentPadding: const EdgeInsets.only(),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text(
                                      item.description,
                                      style: const TextStyle(fontSize: 14.0),
                                    ),
                                    value: item.selected,
                                    onChanged: (value) {
                                      setModalState(() {
                                        typesProvider.onSelectTypeCategory(
                                            item, value!);
                                      });
                                    },
                                  );
                                },
                              ),
                            ),
                            const Text(
                              'Ocasión/Eventos',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2,
                                  childAspectRatio: 5,
                                ),
                                itemCount: typesProvider.categories.length,
                                itemBuilder: (context, index) {
                                  final item = typesProvider.occasions[index];
                                  return CheckboxListTile(
                                    contentPadding: const EdgeInsets.only(),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text(
                                      item.description,
                                      style: const TextStyle(fontSize: 14.0),
                                    ),
                                    value: item.selected,
                                    onChanged: (value) {
                                      setModalState(() {
                                        typesProvider.onSelectTypeOccasion(
                                            item, value!);
                                      });
                                    },
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppFilledButton(
                                  text: 'Aplicar filtros',
                                  onPressed: () {
                                    typesProvider.onApplyFilter();
                                    garmentProvider.searchGarmentByFilter(
                                      typesProvider.categoriesSelectedValue,
                                      typesProvider.occasionsSelectedValue,
                                    );
                                    Navigator.pop(context);
                                  },
                                ),
                                AppOutlinedButton(
                                  text: 'Limpiar filtros',
                                  onPressed: () {
                                    typesProvider.onCleanFilters();
                                    garmentProvider.resetAndGetAll();
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
                  });
            },
          )
        ],
      ),
    );
  }
}
