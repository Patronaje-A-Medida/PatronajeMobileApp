import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/models/garments/order_detail_read.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/widgets/row_colors.dart';
import 'package:patronaje_mobile_app/presentation/orders/widgets/button_status.dart';

class OrderDetailsPage extends StatefulWidget {
  final List<OrderDetailRead> orderDetails;

  const OrderDetailsPage({Key? key, required this.orderDetails})
      : super(key: key);
  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del pedido'),
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
              itemCount: widget.orderDetails.length,
              itemBuilder: (context, index) {
                final orderDetail = widget.orderDetails[index];
                return Card(
                  elevation: 8,
                  shadowColor: Colors.black45,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Hero(
                            tag: 'order-${orderDetail.id}',
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                height: 100,
                                imageUrl: orderDetail.imageUrl,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
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
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const SizedBox(height: 8),
                                Text(
                                  orderDetail.nameGarment,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 12),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Color elegido',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: RowColors(
                                        colors: [orderDetail.color],
                                        onSelectColor: null,
                                      )),
                                    ],
                                  ),
                                ),
                                Text(
                                    'Precio: S/${orderDetail.price.toStringAsFixed(2)}',
                                    style: Theme.of(context).textTheme.caption),
                                const SizedBox(height: 12),
                                Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 12.0),
                                    child: ButtonStatus(
                                        status: orderDetail.orderDetailStatus)),
                              ],
                            ))
                      ]),
                );
              })),
    );
  }
}
