import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/orders/order_provider.dart';
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
          print("=========================vista");
          print(order.toString());

          return GestureDetector(
            onTap: () {
              /*
              Navigator.of(context).push(
                PageRouteBuilder(pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child: OrderDetailsPage(
                      //TODO
                      order: order,
                    ),
                  );
                }),
              );*/
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
                    child: CachedNetworkImage(
                      //imageUrl: order.garments.images[0], //TODO
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
                Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Text(order.orderDate.toString(),
                            style: Theme.of(context).textTheme.caption),
                        Text(
                          order.nameAtelier,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(order.nameAtelier,
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 12),
                        Text(order.price.toStringAsFixed(2),
                            style: Theme.of(context).textTheme.caption),
                        Text(order.orderStatus,
                            style: Theme.of(context).textTheme.caption),
                      ],
                    ))
              ]),
            ),
          );
        });
  }
}
