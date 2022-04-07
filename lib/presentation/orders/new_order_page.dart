import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/basket/basket_provider.dart';
import 'package:patronaje_mobile_app/business/orders/order_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/domain/utils/extensions/hex_color.dart';
import 'package:patronaje_mobile_app/presentation/measures/take_measures_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/custom_snackbar.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class NewOrderPage extends StatelessWidget {
  const NewOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final basketProvider = Provider.of<BasketProvider>(context);
    final orderProivder = Provider.of<OrderProvider>(context);
    final sizeH = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva orden'),
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: basketProvider.newOrder!.details.length,
                itemBuilder: (context, index) {
                  final garment = basketProvider.garmentsSelected[index];
                  final detail = basketProvider.newOrder!.details[index];
                  return Card(
                    elevation: 8,
                    shadowColor: Colors.black45,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl: garment.images[0],
                            height: sizeH * 0.15,
                            width: sizeH * 0.15,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  garment.nameGarment,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Color seleccionado ',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                    ClipOval(
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        color: HexColor.fromHex(detail.color),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Precio ',
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                    Text('S/ ${garment.firstRangePrice}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            AppFilledButton(
                text: 'Realizar pedido',
                onPressed: () async {
                  if (!basketProvider.canMakeOrder) {
                    _showDialog(context, basketProvider);
                  } else {
                    _makeOrder(context, basketProvider);
                  }
                  await orderProivder.getOrdersByIdCliente();
                }),
          ],
        ),
      ),
    );
  }

  _makeOrder(BuildContext context, BasketProvider provider) async {
    final result = await provider.createOrder();
    if (result) {
      ScaffoldMessenger.of(context).showSnackBar(
        makeSnackBar(
          type: AlertType.success,
          message: 'Orden de pedido realizada con éxito.',
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        makeSnackBar(
          type: AlertType.success,
          message: 'Error en realizar la orden de pedido',
        ),
      );
    }
    provider.resetBasket();
    Navigator.pop(context);
  }

  Future<void> _showDialog(BuildContext ctxt, BasketProvider provider) {
    return showDialog<void>(
        context: ctxt,
        builder: (context) {
          return AlertDialog(
            content: const Text(
              '¿Desea tomar nuevamente sus medidas corporales?',
              style: TextStyle(fontSize: 14),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    TransitionPageRoute(
                      child: const TakeMeasuresPage(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: const Text(
                  'Sí, tomar medidas',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              TextButton(
                child: const Text(
                  'No, continuar',
                  style: TextStyle(fontSize: 13),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  _makeOrder(ctxt, provider);
                },
              ),
            ],
          );
        });
  }
}
