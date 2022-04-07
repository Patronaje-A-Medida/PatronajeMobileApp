import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/orders/order_provider.dart';
import 'package:patronaje_mobile_app/presentation/orders/widgets/button_status.dart';
import 'package:patronaje_mobile_app/presentation/orders/widgets/order_details_page.dart';
import 'package:provider/provider.dart';

class OrderGridList extends StatelessWidget {
  const OrderGridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    return ListView.builder(
        itemCount: orderProvider.orders.length,
        itemBuilder: (context, index) {
          final order = orderProvider.orders[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child: OrderDetailsPage(
                      orderDetails: order.details,
                    ),
                  );
                }),
              );
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.black45,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  flex: 2,
                  child: Hero(
                    tag: 'order-${order.id}',
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CachedNetworkImage(
                        height: 100,
                        imageUrl: order.details[0].imageUrl,
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
                ),
                Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Text(order.orderDate.toString().split('.')[0],
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Text(
                          order.nameAtelier,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(order.atelierAddress,
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 12),
                        Text('S/${order.price.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.caption),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            /*child: RowFeatures(
                            features: [order.orderStatus, order.orderStatus],
                          ),*/
                            child: ButtonStatus(status: order.orderStatus)),
                      ],
                    ))
              ]),
            ),
          );
        });
  }
}
