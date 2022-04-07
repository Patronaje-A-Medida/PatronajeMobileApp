import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/orders/order_provider.dart';
import 'package:patronaje_mobile_app/presentation/orders/widgets/order_grid_list.dart';
import 'package:provider/provider.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    return Column(
      children: [
        Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                color: Colors.grey[50],
                child: orderProvider.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : const OrderGridList()))
      ],
    );
  }
}
