import 'package:trazabilidad/api/domain/entities/index.dart';

abstract class TrazaRepository {
  Future<Dispositivo> getDispositivoByLote(String lote);
  Future<Equipo> getEquipoBySerial(String serial);
}
