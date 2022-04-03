import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/on_boarding_measures/measures_guide_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:provider/provider.dart';

class MeasuresGuide extends StatelessWidget {
  const MeasuresGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final guideProvider = Provider.of<MeasuresGuideProvider>(context);
    final sizeH = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: PageView(
        controller: guideProvider.pageController,
        onPageChanged: (value) => guideProvider.moveTo(value),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 48),
              Image.asset(
                guideProvider.guide[0].image,
                height: sizeH * 0.4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  guideProvider.guide[0].title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  guideProvider.guide[0].description,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 48),
              Text(
                guideProvider.guide[1].title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  guideProvider.guide[1].description,
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset(
                guideProvider.guide[1].image,
                height: sizeH * 0.4,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 48),
              Image.asset(
                guideProvider.guide[2].image,
                height: sizeH * 0.4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  guideProvider.guide[2].title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  guideProvider.guide[2].description,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 48),
              Text(
                guideProvider.guide[3].title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  guideProvider.guide[3].description,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 38.0,
                            width: 38.0,
                            decoration: BoxDecoration(
                              color: Palette.green.shade300,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                '1',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          Image.asset(
                            'assets/images/frontal.jpeg',
                            height: sizeH * 0.4,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 38.0,
                            width: 38.0,
                            decoration: BoxDecoration(
                              color: Palette.green.shade300,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          Image.asset(
                            'assets/images/perfil.jpeg',
                            height: sizeH * 0.4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
