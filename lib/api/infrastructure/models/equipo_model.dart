class EquipoDB {
  EquipoDB({
    required this.id,
    required this.serial,
    required this.recinto,
    required this.equipo,
    required this.modelo,
    required this.marca,
    required this.dirfabricante,
    required this.instrucciones,
    required this.finaprevista,
    required this.usocorrecto,
  });

  final int id;
  final String serial;
  final String recinto;
  final String equipo;
  final String modelo;
  final String marca;
  final String dirfabricante;
  final String instrucciones;
  final String finaprevista;
  final String usocorrecto;

  factory EquipoDB.fromJson(Map<String, dynamic> json) => EquipoDB(
        id: json["id"],
        serial: json["serial"],
        recinto: json["recinto"],
        equipo: json["equipo"],
        modelo: json["modelo"],
        marca: json["marca"],
        dirfabricante: json["dirfabricante"],
        instrucciones: json["instrucciones"],
        finaprevista: json["finaprevista"],
        usocorrecto: json["usocorrecto"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "serial": serial,
        "recinto": recinto,
        "equipo": equipo,
        "modelo": modelo,
        "marca": marca,
        "dirfabricante": dirfabricante,
        "instrucciones": instrucciones,
        "finaprevista": finaprevista,
        "usocorrecto": usocorrecto,
      };
}
