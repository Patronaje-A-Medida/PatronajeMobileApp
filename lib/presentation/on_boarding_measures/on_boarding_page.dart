import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/business/on_boarding_measures/measures_guide_provider.dart';
import 'package:patronaje_mobile_app/domain/utils/themes/color_theme.dart';
import 'package:patronaje_mobile_app/presentation/measures/take_measures_page.dart';
import 'package:patronaje_mobile_app/presentation/on_boarding_measures/widgets/measures_guide.dart';
import 'package:patronaje_mobile_app/presentation/shared/app_filled_button.dart';
import 'package:patronaje_mobile_app/presentation/shared/transition_page_route.dart';
import 'package:provider/provider.dart';

class OnBoardingMeasuresPage extends StatelessWidget {
  const OnBoardingMeasuresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    final guideProvider = Provider.of<MeasuresGuideProvider>(context);

    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          guideProvider.resetValues();
          Navigator.pop(context);
          return true;
        },
        child: SafeArea(
          child: Container(
            color: Palette.pink.shade50,
            child: Stack(
              children: [
                SizedBox(
                  height: sizeH,
                  width: sizeW,
                  child: const MeasuresGuide(),
                ),
                Positioned(
                  top: 10,
                  right: 18,
                  child: GestureDetector(
                    child: const Text('Saltar'),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        TransitionPageRoute(
                          child: const TakeMeasuresPage(),
                          direction: AxisDirection.left,
                        ),
                      ).then((_) => guideProvider.resetValues());
                    },
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: sizeH * 0.16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      guideProvider.guide.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 12.5,
                        width: 12.5,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: guideProvider.currentPage == index
                              ? Palette.green.shade300
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      transitionBuilder: (child, animation) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                          alignment: Alignment.center,
                        );
                      },
                      child: guideProvider.currentPage != 3
                          ? FloatingActionButton(
                              backgroundColor: Palette.green.shade300,
                              foregroundColor: Palette.green.shade900,
                              child: const Icon(
                                Icons.navigate_next_rounded,
                                size: 38,
                              ),
                              onPressed: () {
                                guideProvider.nextPage();
                              },
                            )
                          : AppFilledButton(
                              text: 'Continuar',
                              icon: Icons.navigate_next_rounded,
                              color: Palette.green.shade300,
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  TransitionPageRoute(
                                    child: const TakeMeasuresPage(),
                                    direction: AxisDirection.left,
                                  ),
                                ).then((_) => guideProvider.resetValues());
                              },
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
