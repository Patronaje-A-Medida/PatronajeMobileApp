import 'package:flutter/cupertino.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/configuration_types/configuration_types.dart';
import 'package:patronaje_mobile_app/domain/models/configuration_types/type_read.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/configuration_types_repository.dart';

class ConfigurationTypesProvider extends ChangeNotifier {
  final ConfigurationTypesRepository _configurationTypesRepository;

  ConfigurationTypesProvider(this._configurationTypesRepository);

  late ConfigurationTypes _configurationTypes;
  late List<TypeRead> _categories = [];
  late List<TypeRead> _occasions = [];
  late List<TypeRead> _categoriesSelected = [];
  late List<TypeRead> _occasionsSelected = [];
  late List<int> _categoriesSelectedValue = [];
  late List<int> _occasionsSelectedValue = [];

  List<TypeRead> get categories => _categories;
  List<TypeRead> get occasions => _occasions;
  List<TypeRead> get categoriesSelected => _categoriesSelected;
  List<TypeRead> get occasionsSelected => _occasionsSelected;
  List<int> get categoriesSelectedValue => _categoriesSelectedValue;
  List<int> get occasionsSelectedValue => _occasionsSelectedValue;

  void getAllTypes() async {
    try {
      _configurationTypes = await _configurationTypesRepository.getAll();
      _categories = List<TypeRead>.from(_configurationTypes.categories);
      _occasions = List<TypeRead>.from(_configurationTypes.occasions);
      notifyListeners();
    } on GeneralException catch (_) {
      //_isLoading = false;
      //notifyListeners();
      rethrow;
    }
  }

  void onSelectTypeCategory(TypeRead item, bool value) {
    _categories.where((e) => e.key == item.key).first.selected = value;
    notifyListeners();
  }

  void onSelectTypeOccasion(TypeRead item, bool value) {
    _occasions.where((e) => e.key == item.key).first.selected = value;
    notifyListeners();
  }

  void onApplyFilter() {
    _categoriesSelected = _categories.where((e) => e.selected).toList();
    _categoriesSelectedValue = _categoriesSelected.map((e) => e.value).toList();
    _occasionsSelected = _occasions.where((e) => e.selected).toList();
    _occasionsSelectedValue = _occasionsSelected.map((e) => e.value).toList();
    notifyListeners();
  }

  void onCleanFilters() {
    //_categories = List<TypeRead>.from(_configurationTypes.categories);
    for (var e in _categories) {
      e.selected = false;
    }
    for (var e in _occasions) {
      e.selected = false;
    }
    notifyListeners();
  }
}
