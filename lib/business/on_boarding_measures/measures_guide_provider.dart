import 'package:flutter/material.dart';
import 'package:patronaje_mobile_app/domain/models/measures/measures_step.dart';
import 'package:patronaje_mobile_app/domain/utils/constants/guide_constant.dart';

class MeasuresGuideProvider extends ChangeNotifier {
  final List<MeasuresStep> _guide = measuresGuide;
  late PageController _pageController;
  late int _currentPage;

  MeasuresGuideProvider() {
    _pageController = PageController(initialPage: 0);
    _currentPage = 0;
  }

  PageController get pageController => _pageController;
  List<MeasuresStep> get guide => _guide;
  int get currentPage => _currentPage;

  nextPage() {
    _currentPage += 1;

    _pageController.nextPage(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );

    notifyListeners();
  }

  moveTo(int value) {
    _currentPage = value;
    _pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
    notifyListeners();
  }

  resetValues() {
    _currentPage = 0;
    notifyListeners();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentPage = 0;
    notifyListeners();
    super.dispose();
  }
}
