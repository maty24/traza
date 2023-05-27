import 'package:trazabilidad/api/domain/entities/dispositivo_resume_entities.dart';
import 'package:trazabilidad/api/infrastructure/models/dispositivo_model.dart';

class TrazaDisMapper {
  static Dispositivo trazaDBtoEntity(DispositivoDB dispodb) => Dispositivo(
      id: dispodb.id,
      numerolote: dispodb.numerolote,
      recinto: dispodb.recinto,
      equipo: dispodb.equipo,
      modelo: dispodb.modelo,
      marca: dispodb.marca,
      dirfabricante: dispodb.dirfabricante,
      instrucciones: dispodb.instrucciones,
      finaprevista: dispodb.finaprevista,
      usocorrecto: dispodb.usocorrecto);
}
