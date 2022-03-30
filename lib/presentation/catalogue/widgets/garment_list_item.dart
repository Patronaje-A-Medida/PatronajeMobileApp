import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_min.dart';

class GarmentListItem extends StatelessWidget {
  final GarmentMin garment;
  const GarmentListItem({Key? key, required this.garment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black45,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: garment.imageUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.contain,
                  )),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              garment.nameGarment,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(garment.nameAtelier,
                style: Theme.of(context).textTheme.caption),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Sora',
                  fontSize: 12,
                ),
                children: [
                  const TextSpan(
                    text: 'Desde S/ ',
                  ),
                  TextSpan(
                    text: '${garment.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
