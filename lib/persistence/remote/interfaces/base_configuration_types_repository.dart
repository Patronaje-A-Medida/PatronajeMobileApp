import 'package:patronaje_mobile_app/domain/models/configuration_types/configuration_types.dart';

abstract class BaseConfigurationTypesRepository {
  Future<ConfigurationTypes> getAll();
}
