import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/basket/basket_provider.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_read.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/widgets/row_colors.dart';
import 'package:patronaje_mobile_app/presentation/catalogue/widgets/row_features.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_carousel.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/custom_snackbar.dart';
import 'package:provider/provider.dart';

class GarmentDetailsPage extends StatefulWidget {
  final GarmentRead garment;

  const GarmentDetailsPage({Key? key, required this.garment}) : super(key: key);

  @override
  State<GarmentDetailsPage> createState() => _GarmentDetailsPageState();
}

class _GarmentDetailsPageState extends State<GarmentDetailsPage>
    with SingleTickerProviderStateMixin {
  final double _expandedheightFactor = 0.78;
  final double _collapseheightFactor = 0.48;
  double _sizeW = 0.0;
  double _sizeH = 0.0;
  late AnimationController _animationController;
  late Animation<double> _heightFactorAnimation;
  bool _isAnimationCompleted = false;
  String _selectedColor = '';

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _heightFactorAnimation =
        Tween<double>(begin: _expandedheightFactor, end: _collapseheightFactor)
            .animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  onBodyDetailsTap() {
    setState(() {
      if (_isAnimationCompleted) {
        _animationController.fling(velocity: -1);
      } else {
        _animationController.fling(velocity: 1);
      }
      _isAnimationCompleted = !_isAnimationCompleted;
    });
  }

  onBodyDetailsDragUp(DragUpdateDetails updateDetails) {
    double fractionDragged = updateDetails.primaryDelta! / _sizeH;
    _animationController.value =
        _animationController.value - 3 * fractionDragged;
  }

  onBodyDetailsDragEnd(DragEndDetails endDetails) {
    if (_animationController.value >= 0.3) {
      _animationController.fling(velocity: 1);
    } else {
      _animationController.fling(velocity: -1);
    }
  }

  @override
  Widget build(BuildContext context) {
    _sizeW = MediaQuery.of(context).size.width;
    _sizeH = MediaQuery.of(context).size.height;
    final basketProvider = Provider.of<BasketProvider>(context);

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        //title: Text(garment.nameGarment),
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
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: _sizeH),
          child: SizedBox(
            height: double.infinity,
            child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, _) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      FractionallySizedBox(
                        alignment: Alignment.topCenter,
                        heightFactor: _heightFactorAnimation.value,
                        widthFactor: 1,
                        child: AppCarousel(
                          tagHero: 'garment-${widget.garment.id}',
                          images: widget.garment.images,
                          height: _sizeH * _heightFactorAnimation.value,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => onBodyDetailsTap(),
                        onVerticalDragUpdate: (details) =>
                            onBodyDetailsDragUp(details),
                        onVerticalDragEnd: (details) =>
                            onBodyDetailsDragEnd(details),
                        child: FractionallySizedBox(
                          alignment: Alignment.bottomCenter,
                          heightFactor: 1 - _heightFactorAnimation.value,
                          widthFactor: 1,
                          child: Container(
                            padding: const EdgeInsets.all(18),
                            /*decoration: BoxDecoration(
                            color: Palette.pink.shade50,
                            
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(25),
                            ),
                          ),*/
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Palette.pink.withOpacity(0.8),
                                    blurRadius: 25.0,
                                    offset: const Offset(0.0, 0.75))
                              ],
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(25),
                              ),
                            ),
                            width: _sizeW,
                            child: ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.garment.nameGarment,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'S/ ' +
                                            widget.garment.firstRangePrice
                                                .toStringAsFixed(2),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Colores disponibles',
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
                                          colors: widget.garment.colors,
                                          onSelectColor: (value) {
                                            _selectedColor = value;
                                          },
                                        ),
                                      ),
                                      AppFilledButton(
                                        text: 'Agregar',
                                        icon: Icons.shopping_cart,
                                        onPressed: () {
                                          basketProvider.addItemToOrder(
                                              widget.garment.copyWith(),
                                              _selectedColor);

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(makeSnackBar(
                                                  type: AlertType.success,
                                                  message:
                                                      'Prenda agregada a la orden de pedidos'));
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Telas',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: RowFeatures(
                                    features: widget.garment.fabrics,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Eventos',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: RowFeatures(
                                    features: widget.garment.occasions,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Atelier',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '${widget.garment.nameAtelier} - ${widget.garment.atelierAddress}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade800),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
