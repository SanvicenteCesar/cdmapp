class Evolucions {
  List<Evolucio> items = new List();

  Evolucions();

  Evolucions.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new Evolucio.mapeado(item);
      items.add(work);
    } //fin for
  }

  Evolucions.fromJsonMap(decodedData); //fin constructor

}

class Evolucio {
  int id;
  String idPatient;
  String idClinicHistory;
  String imagen;
  
  String diagnostic;
 

  Evolucio({
    this.id,
    this.idPatient,
    this.idClinicHistory,
    this.imagen,
    this.diagnostic,
    
  });

  Evolucio.fromJson(Map<dynamic, dynamic> json) {
    id = json["id"];
    idPatient = json["idPatient"];
    idClinicHistory = json["idClinicHistory"];
    imagen = json["imagen"];
    diagnostic = json["diagnostic"];
    
  }
  Evolucio.mapeado(Map<String, dynamic> json) {
    id = json["id"];
    idPatient = json["idPatient"];
    idClinicHistory = json["idClinicHistory"];
    imagen = json["imagen"];
    diagnostic = json["diagnostic"];
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "idPatient": idPatient,
        "idClinicHistory": idClinicHistory,
        "imagen": imagen,
        "diagnostic": diagnostic,
       
      };
}