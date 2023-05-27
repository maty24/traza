import 'package:trazabilidad/api/domain/entities/index.dart';

abstract class TrazaDataSource {
  Future<Dispositivo> getDispositivoByLote(String lote);
  Future<Equipo> getEquipoBySerial(String serial);
}
