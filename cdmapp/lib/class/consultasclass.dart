class Consults {
  List<Consulta> items = new List();

  Consults();

  Consults.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new Consulta.mapeado(item);
      items.add(work);
    } //fin for
  }

  Consults.fromJsonMap(decodedData); //fin constructor

}

class Consulta {
  int id;
  String idDoctor;
  String idSpeciality;
  String idClinicHistory;
  String idPatient;
  String namePatient;
  String dniPatient;
  String fechaPlanificada;
  String hora;
  String motive;
  String status;
  String consultorioVisitar;
  String mes;
  String dia;
  String atendidoPor;
  

  Consulta({
    this.id,
    this.idDoctor,
    this.idSpeciality,
    this.idClinicHistory,
    this.idPatient,
    this.namePatient,
    this.dniPatient,
    this.fechaPlanificada,
    this.hora,
    this.motive,
    this.status,
    this.consultorioVisitar,
    this.mes,
    this.dia,
    this.atendidoPor,
    
  });
  Consulta.mapeado(Map<dynamic, dynamic> json) {
    id = json["id"];
    idDoctor = json["idDoctor"];
    idSpeciality = json["idSpeciality"];
    idClinicHistory = json["idClinicHistory"];
    idPatient = json["idPatient"];
    namePatient = json["namePatient"];
    dniPatient = json["dniPatient"];
    fechaPlanificada = json["fechaPlanificada"];
    hora = json["hora"];
    motive = json["motive"];
    status = json["status"];
    consultorioVisitar = json["consultorioVisitar"];
    mes = json["mes"];
    dia = json["dia"];
    atendidoPor = json["atendidoPor"];
  }


  Consulta.fromJson(Map<dynamic, dynamic> json) {
    id = json["id"];
    idDoctor = json["idDoctor"];
    idSpeciality = json["idSpeciality"];
    idClinicHistory = json["idClinicHistory"];
    idPatient = json["idPatient"];
    namePatient = json["namePatient"];
    dniPatient = json["dniPatient"];
    fechaPlanificada = json["fechaPlanificada"];
    hora = json["hora"];
    motive = json["motive"];
    status = json["status"];
    consultorioVisitar = json["consultorioVisitar"];
    mes = json["mes"];
    dia = json["dia"];
    atendidoPor = json["atendidoPor"];
  
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "idDoctor": idDoctor,
        "idSpeciality": idSpeciality,
        "idClinicHistory": idClinicHistory,
        "idPatient": idPatient,
        "namePatient": namePatient,
        "dniPatient": dniPatient,
        "fechaPlanificada": fechaPlanificada,
        "hora": hora,
        "motive": motive,
        "status": status,
        "consultorioVisitar": consultorioVisitar,
        "mes": mes,
        "dia": dia,
        "atendidoPor": atendidoPor,
      };
      
}
