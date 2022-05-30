import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  final List<String> _titles = [
    //'Home',
    'Medidas',
    'Catálogo',
    'Órdenes',
  ];

  late int _currentPage;
  late String _currentTitlePage;
  late PageController _pageController;

  NavigationProvider() {
    _currentPage = 0;
    _currentTitlePage = _titles[0];
    _pageController = PageController(initialPage: 0);
  }

  PageController get pageController => _pageController;

  String get currentTitlePage => _currentTitlePage;

  int get currentPage => _currentPage;

  set currentPage(int value) {
    final difference = (_currentPage - value).abs();

    _currentPage = value;
    _currentTitlePage = _titles[value];

    if (difference > 1) {
      _pageController.jumpToPage(value);
    } else {
      _pageController.animateToPage(
        value,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    }
    notifyListeners();
  }

  moveTo(int value) {
    _currentPage = value;
    _currentTitlePage = _titles[value];
    _pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
    notifyListeners();
  }

  setWithoutMove(int value) {
    _currentPage = value;
    _currentTitlePage = _titles[value];
    _pageController.dispose();
    _pageController = PageController(initialPage: value);
    notifyListeners();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
