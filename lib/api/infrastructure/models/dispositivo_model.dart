class DispositivoDB {
  DispositivoDB({
    required this.id,
    required this.numerolote,
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
  final int numerolote;
  final String recinto;
  final String equipo;
  final String modelo;
  final String marca;
  final String dirfabricante;
  final String instrucciones;
  final String finaprevista;
  final String usocorrecto;

  factory DispositivoDB.fromJson(Map<String, dynamic> json) => DispositivoDB(
        id: json["id"],
        numerolote: json["numerolote"],
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
        "numerolote": numerolote,
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
