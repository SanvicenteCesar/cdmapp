class Presupuests {
  List<Presupuest> items = new List();

  Presupuests();

  Presupuests.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new Presupuest.mapeado(item);
      items.add(work);
    } //fin for
  }

  Presupuests.fromJsonMap(decodedData); //fin constructor

}

class Presupuest {
  int id;
  String idPatient;
  String presupuestoBsf;
  String presupuestoDolares;
  String abono;
  String debe;
  String estatus;
  String estimado;
  String serviciosTratados;
  String fechadeCreacion;
  String fechasdePagos;
  

  Presupuest({
    this.id,
    this.idPatient,
    this.presupuestoBsf,
    this.presupuestoDolares,
    this.abono,
    this.debe,
    this.estatus,
    this.estimado,
    this.serviciosTratados,
    this.fechadeCreacion,
    this.fechasdePagos,
    
  });
  Presupuest.mapeado(Map<dynamic, dynamic> json) {
    id = json["id"];
    idPatient = json["idPatient"];
    presupuestoBsf = json["PresupuestoBsf"];
    presupuestoDolares = json["PresupuestoDolares"];
    abono = json["Abono"];
    debe = json["Debe"];
    estatus = json["Estatus"];
    estimado = json["Estimado"];
    serviciosTratados = json["serviciosTratados"];
    fechadeCreacion = json["FechadeCreacion"];
    fechasdePagos = json["FechasdePagos"];
  }


  Presupuest.fromJson(Map<dynamic, dynamic> json) {
    id = json["id"];
    idPatient = json["idPatient"];
    presupuestoBsf = json["PresupuestoBsf"];
    presupuestoDolares = json["PresupuestoDolares"];
    abono = json["Abono"];
    debe = json["Debe"];
    estatus = json["Estatus"];
    estimado = json["Estimado"];
    serviciosTratados = json["serviciosTratados"];
    fechadeCreacion = json["FechadeCreacion"];
    fechasdePagos = json["FechasdePagos"];
  
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "idPatient": idPatient,
        "PresupuestoBsf": presupuestoBsf,
        "PresupuestoDolares": presupuestoDolares,
        "Abono": abono,
        "Debe": debe,
        "Estatus": estatus,
        "Estimado": estimado,
        "serviciosTratados": serviciosTratados,
        "FechadeCreacion": fechadeCreacion,
        "FechasdePagos": fechasdePagos,
      };
      
}
