class Pacientes {
  List<Paciente> items = new List();

  Pacientes();

  Pacientes.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new Paciente.fromJson(item);
      items.add(work);
    } //fin for
  }

  Pacientes.fromJsonMap(decodedData); //fin constructor

}

class Paciente {
  int id;
  String rp;
  String indicaciones;
  String firma;
  String idPatient;
  String idDoctor;
 

  Paciente({
    this.id,
    this.rp,
    this.indicaciones,
    this.firma,
    this.idPatient,
    this.idDoctor,
    
  });

  Paciente.fromJson(Map<dynamic, dynamic> json) {
    id = json["id"];
    rp = json["Rp"];
    indicaciones = json["Indicaciones"];
    firma = json["Firma"];
    idPatient = json["idPatient"];
    idDoctor = json["idDoctor"];
    
  }
  Paciente.mapeado(Map<String, dynamic> json) {
    id = json["id"];
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "Rp": rp,
        "Indicaciones": indicaciones,
        "Firma": firma,
        "idPatient": idPatient,
        "idDoctor": idDoctor,
       
      };
}