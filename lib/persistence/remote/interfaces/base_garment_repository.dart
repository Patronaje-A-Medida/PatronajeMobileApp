import 'package:patronaje_mobile_app/domain/models/garments/garment_min.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_query.dart';

abstract class BaseGarmentRepository {
  Future<List<GarmentMin>> getAllByQuery(GarmentQuery garmentQuery);
}
