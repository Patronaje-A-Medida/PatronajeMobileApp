import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  final List<String> _titles = [
    'Home',
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
    _currentPage = value;
    _currentTitlePage = _titles[value];
    _pageController.jumpToPage(value);
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

  /*int _currentPage = 0;
  String _currentTitlePage = 'Home';
  PageController _pageController = PageController(initialPage: 0);*/

}
