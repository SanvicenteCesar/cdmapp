class SeguimientoTodos {
  List<SeguimientoTod> items = new List();

  SeguimientoTodos();

  SeguimientoTodos.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new SeguimientoTod.mapeado(item);
      items.add(work);
    } //fin for
  }

  SeguimientoTodos.fromJsonMap(decodedData); //fin constructor

}

class SeguimientoTod {
  int id;
  String idPatient;
  String imagen;
  String procedimientoOdontologico;
  String estatus;
  String instrumentos;
  String materiales;
  String diagnostico;
  String recomendaciones;
  String observaciones;

  

  SeguimientoTod({
    this.id,
    this.idPatient,
    this.imagen,
    this.procedimientoOdontologico,
    this.estatus,
    this.instrumentos,
    this.materiales,
    this.diagnostico,
    this.recomendaciones,
    this.observaciones,
    
    
  });
  SeguimientoTod.mapeado(Map<dynamic, dynamic> json) {
    id = json["id"];
    idPatient = json["idPatient"];
    imagen = json["Imagen"];
    procedimientoOdontologico = json["ProcedimientoOdontologico"];
    estatus = json["Estatus"];
    instrumentos = json["Instrumentos"];
    materiales = json["Materiales"];
    diagnostico = json["Diagnostico"];
    recomendaciones = json["Recomendaciones"];
    observaciones = json["Observaciones"];
  
  }


  SeguimientoTod.fromJson(Map<dynamic, dynamic> json) {
    id = json["id"];
    idPatient = json["idPatient"];
    imagen = json["Imagen"];
    procedimientoOdontologico = json["ProcedimientoOdontologico"];
    estatus = json["Estatus"];
    instrumentos = json["Instrumentos"];
    materiales = json["Materiales"];
    diagnostico = json["Diagnostico"];
    recomendaciones = json["Recomendaciones"];
    observaciones = json["Observaciones"];
  
  
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "idPatient": idPatient,
        "Imagen": imagen,
        "ProcedimientoOdontologico": procedimientoOdontologico,
        "Estatus": estatus,
        "Instrumentos": instrumentos,
        "Materiales": materiales,
        "Diagnostico": diagnostico,
        "Recomendaciones": recomendaciones,
        "Observaciones": observaciones,
      
      };
      
}
