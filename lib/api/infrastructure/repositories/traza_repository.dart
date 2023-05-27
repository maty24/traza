import 'package:trazabilidad/api/domain/datasource/traza_datasource.dart';
import 'package:trazabilidad/api/domain/entities/equipo_resume_entities.dart';
import 'package:trazabilidad/api/domain/entities/dispositivo_resume_entities.dart';
import 'package:trazabilidad/api/domain/repositories/traza_repository.dart';

class TrazaRepositoryImp extends TrazaRepository {
  final TrazaDataSource dataSource;
  TrazaRepositoryImp(this.dataSource);

  @override
  Future<Dispositivo> getDispositivoByLote(String lote) {
    return dataSource.getDispositivoByLote(lote);
  }

  @override
  Future<Equipo> getEquipoBySerial(String serial) {
    return dataSource.getEquipoBySerial(serial);
  }
}
