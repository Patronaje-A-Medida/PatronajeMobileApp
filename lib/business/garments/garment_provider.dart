// ignore_for_file: avoid_init_to_null

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_query.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_read.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/garment_repository.dart';

class GarmentProvider extends ChangeNotifier {
  final GarmentRepository _garmentRepository;

  GarmentProvider(this._garmentRepository);

  late bool _isLoading = false;
  late List<GarmentRead> _garments = [];
  Timer? _debounce;
  late GarmentQuery _garmentQuery = GarmentQuery();
  late GarmentRead? _garmentDetails = null;

  bool get isLoading => _isLoading;
  List<GarmentRead> get garments => _garments;
  GarmentRead? get garmentDetails => _garmentDetails;

  Future<void> getAllByQuery() async {
    try {
      _isLoading = true;
      notifyListeners();
      final result = await _garmentRepository.getAllByQuery(_garmentQuery);
      _isLoading = false;
      _garments = result;
      notifyListeners();
    } on GeneralException catch (_) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  void searchGarmentsByQuery(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 750), () async {
      _garmentQuery = _garmentQuery.copyWith(filterString: query);
      await getAllByQuery();
    });
  }

  void searchGarmentByFilter(List<int> categories, List<int> occasions) async {
    _garmentQuery = _garmentQuery.copyWith(
      categories: categories,
      occasions: occasions,
    );
    await getAllByQuery();
  }

  void resetAndGetAll() async {
    _garmentQuery = GarmentQuery();
    await getAllByQuery();
  }

  void getDetails(int id) async {
    try {
      //_isLoading = true;
      _garmentDetails = null;
      notifyListeners();
      final result = await _garmentRepository.getById(id);
      //_isLoading = false;
      _garmentDetails = result;
      notifyListeners();
    } on GeneralException catch (_) {
      //_isLoading = false;
      //notifyListeners();
      rethrow;
    }
  }
}
