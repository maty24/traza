import 'package:trazabilidad/api/domain/entities/equipo_resume_entities.dart';
import 'package:trazabilidad/api/infrastructure/models/equipo_model.dart';

class TrazaEquiMapper {
  static Equipo trazaEquiDBtoEntity(EquipoDB equidb) => Equipo(
      id: equidb.id,
      serial: equidb.serial,
      recinto: equidb.recinto,
      equipo: equidb.equipo,
      modelo: equidb.modelo,
      marca: equidb.marca,
      dirfabricante: equidb.dirfabricante,
      instrucciones: equidb.instrucciones,
      finaprevista: equidb.finaprevista,
      usocorrecto: equidb.usocorrecto);
}
