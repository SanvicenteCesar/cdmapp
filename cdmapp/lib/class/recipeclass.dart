class Recipe {
  List<Recip> items = new List();

  Recipe();

  Recipe.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new Recip.mapeado(item);
      items.add(work);
    } //fin for
  }

  Recipe.fromJsonMap(decodedData); //fin constructor

}

class Recip {
  int id;
  String rp;
  String indicaciones;
  String firma;
  String idPatient;
  String idDoctor;
 

  Recip({
    this.id,
    this.rp,
    this.indicaciones,
    this.firma,
    this.idPatient,
    this.idDoctor,
    
  });

  Recip.fromJson(Map<dynamic, dynamic> json) {
    id = json["id"];
    rp = json["Rp"];
    indicaciones = json["Indicaciones"];
    firma = json["Firma"];
    idPatient = json["idPatient"];
    idDoctor = json["idDoctor"];
    
  }
  Recip.mapeado(Map<String, dynamic> json) {
    id = json["id"];
    rp = json["Rp"];
    indicaciones = json["Indicaciones"];
    firma = json["Firma"];
    idPatient = json["idPatient"];
    idDoctor = json["idDoctor"];
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