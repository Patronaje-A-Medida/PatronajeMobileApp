import 'package:patronaje_mobile_app/domain/models/garments/garment_min.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_query.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_read.dart';

abstract class BaseGarmentRepository {
  Future<List<GarmentRead>> getAllByQuery(GarmentQuery garmentQuery);
  Future<GarmentRead> getById(int id);
}
