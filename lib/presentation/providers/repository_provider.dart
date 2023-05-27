import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trazabilidad/api/infrastructure/datasource/trazabdb_datasource.dart';
import 'package:trazabilidad/api/infrastructure/repositories/traza_repository.dart';

final trazaRepositoryProvider = Provider((ref) {
  return TrazaRepositoryImp(TrazadbDataSource());
});
