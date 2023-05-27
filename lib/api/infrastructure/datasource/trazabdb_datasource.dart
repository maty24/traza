import 'package:dio/dio.dart';
import 'package:trazabilidad/api/domain/datasource/traza_datasource.dart';
import 'package:trazabilidad/api/domain/entities/equipo_resume_entities.dart';
import 'package:trazabilidad/api/domain/entities/dispositivo_resume_entities.dart';
import 'package:trazabilidad/api/infrastructure/mappers/dispositivos_mapper.dart';
import 'package:trazabilidad/api/infrastructure/mappers/equipo_mapper.dart';
import 'package:trazabilidad/api/infrastructure/models/dispositivo_model.dart';
import 'package:trazabilidad/api/infrastructure/models/equipo_model.dart';

class TrazadbDataSource extends TrazaDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.101:3001/api'));

  @override
  Future<Dispositivo> getDispositivoByLote(String lote) async {
    final response = await dio.get('/dismedicos/$lote');
    if (response.statusCode != 200) throw Exception('Lote with $lote not found');
    final disResume = DispositivoDB.fromJson(response.data);
    final Dispositivo dispo = TrazaDisMapper.trazaDBtoEntity(disResume);
    return dispo;
  }

  @override
  Future<Equipo> getEquipoBySerial(String serial) async {
    final response = await dio.get('/regequipos/$serial');
    if (response.statusCode != 200) throw Exception('No hay datos');
    final equiResume = EquipoDB.fromJson(response.data);
    final Equipo equi = TrazaEquiMapper.trazaEquiDBtoEntity(equiResume);
    return equi;
  }
}
