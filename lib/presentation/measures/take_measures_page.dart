import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/measures/take_measures_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/enums/general_enums.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/measures/measures_results_page.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/custom_snackbar.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class TakeMeasuresPage extends StatelessWidget {
  const TakeMeasuresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final takeMeasuresProvider = Provider.of<TakeMeasuresProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Toma de Medidas Corporales'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            takeMeasuresProvider.resetPhotos();
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 38.0,
                    width: 38.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Foto frontal',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(text: '\ncon brazos y piernas abiertas'),
                      ],
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Sora',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.lightbulb,
                      color: Palette.yellow.shade600,
                    ),
                    onPressed: () => _showDialogGuide(
                      context: context,
                      heightImage: sizeH * 0.4,
                      isFrontal: true,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: SizedBox(
                  height: sizeH * 0.20,
                  width: sizeH * 0.20,
                  child: takeMeasuresProvider.imageFrontal != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            takeMeasuresProvider.imageFrontal!,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(
                          color: Colors.white,
                        ),
                ),
              ),
              AppFilledButton(
                text: '',
                icon: Icons.camera_alt_rounded,
                onPressed: () => _showPictureTakeMode(
                  context: context,
                  provider: takeMeasuresProvider,
                  frontalImage: true,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 38.0,
                    width: 38.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Foto lateral',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                            text:
                                '\ncon brazos pegados al cuerpo \ny piernas juntas'),
                      ],
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Sora',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.lightbulb,
                      color: Palette.yellow.shade600,
                    ),
                    onPressed: () => _showDialogGuide(
                      context: context,
                      heightImage: sizeH * 0.4,
                      isFrontal: false,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: SizedBox(
                  height: sizeH * 0.20,
                  width: sizeH * 0.20,
                  child: takeMeasuresProvider.imageLateral != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            takeMeasuresProvider.imageLateral!,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(
                          color: Colors.white,
                        ),
                ),
              ),
              AppFilledButton(
                text: '',
                icon: Icons.camera_alt_rounded,
                onPressed: () => _showPictureTakeMode(
                  context: context,
                  provider: takeMeasuresProvider,
                  frontalImage: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: AppFilledButton(
                  text: 'Calcular medidas',
                  onPressed: () {
                    if (takeMeasuresProvider.canCalculateMeasures) {
                      takeMeasuresProvider.calculateMeasures();
                      Navigator.pushReplacement(
                        context,
                        TransitionPageRoute(
                          child: const MeasuresResultsPage(),
                          direction: AxisDirection.left,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        makeSnackBar(
                          type: AlertType.error,
                          message: 'Es obligatorio tomarse las dos fotos.',
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showDialogGuide({
    required BuildContext context,
    required double heightImage,
    required bool isFrontal,
  }) async {
    return showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              'Recuerda imitar la imagen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  isFrontal
                      ? 'Abre ligeramente los brazos y la piernas.'
                      : 'Mantén los brazos pegados al cuerpo y junta la piernas.',
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 12),
                //AssetImage()
                Image.asset(
                  isFrontal
                      ? 'assets/images/frontal.jpeg'
                      : 'assets/images/perfil.jpeg',
                  height: heightImage,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok!'),
              ),
            ],
          );
        });
  }

  Future<void> _showPictureTakeMode({
    required BuildContext context,
    required TakeMeasuresProvider provider,
    required bool frontalImage,
  }) async {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
            child: TextButton(
              style: TextButton.styleFrom(primary: Palette.green.shade300),
              child: Row(
                children: const [
                  Icon(Icons.camera_alt_rounded),
                  SizedBox(width: 8),
                  Text('Desde cámara'),
                ],
              ),
              onPressed: () {
                frontalImage
                    ? provider.takePhotoFrontal(source: 1)
                    : provider.takePhotoLateral(source: 1);
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 12.0, left: 18.0, right: 18.0),
            child: TextButton(
                style: TextButton.styleFrom(primary: Palette.green.shade300),
                child: Row(
                  children: const [
                    Icon(Icons.filter),
                    SizedBox(width: 8),
                    Text('Desde galería'),
                  ],
                ),
                onPressed: () {
                  frontalImage
                      ? provider.takePhotoFrontal(source: 2)
                      : provider.takePhotoLateral(source: 2);
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
