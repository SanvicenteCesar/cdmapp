class SeguimientoOrtodon {
  List<SeguimientoOrtod> items = new List();

  SeguimientoOrtodon();

  SeguimientoOrtodon.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new SeguimientoOrtod.mapeado(item);
      items.add(work);
    } //fin for
  }

  SeguimientoOrtodon.fromJsonMap(decodedData); //fin constructor

}

class SeguimientoOrtod {
    int id;
    String idPatient;
    String imagen;
    String medicaciones;
    String plandeTratamiento;
    String diagnostico;
    String claseCanina1;
    String claseCanina2;
    String clasificacionAngleCanina1;
    String clasificacionAngleCanina2;
    String claseMolar1;
    String claseMolar2;
    String clasificacionAngleMolar1;
    String clasificacionAngleMolar2;
    String divisionesMolar1;
    String divisionesMolar2;
    String divisionesMolarV1;
    String divisionesMolarV2;
    String categoriasMolar1;
    String categoriasMolar2;
    String claseEsqueletalClasificacionAngle;
    String overjet;
    String overBite;
    String lineaMedia;
    String tipodePerfil;
    String gOGNPMAX;
    String sUPINF;
    String aNB;
    String sNB;
    String sNA;
    String sNGN;
    String nAPOG;
    String sNGOGN;
    String sNPLO;
    String sNFH;
    
  SeguimientoOrtod({
    this.id,
    this.idPatient,
    this.imagen,
    this.medicaciones,
    this.plandeTratamiento,
    this.diagnostico,
    this.claseCanina1,
    this.claseCanina2,
    this.clasificacionAngleCanina1,
    this.clasificacionAngleCanina2,
    this.claseMolar1,
    this.claseMolar2,
    this.clasificacionAngleMolar1,
    this.clasificacionAngleMolar2,
    this.divisionesMolar1,
    this.divisionesMolar2,
    this.divisionesMolarV1,
    this.divisionesMolarV2,
    this.categoriasMolar1,
    this.categoriasMolar2,
    this.claseEsqueletalClasificacionAngle,
    this.overjet,
    this.overBite,
    this.lineaMedia,
    this.tipodePerfil,
    this.gOGNPMAX,
    this.sUPINF,
    this.aNB,
    this.sNB,
    this.sNA,
    this.sNGN,
    this.nAPOG,
    this.sNGOGN,
    this.sNPLO,
    this.sNFH,
    
    
  });
  SeguimientoOrtod.mapeado(Map<dynamic, dynamic> json) {
    id = json["id"];
    idPatient = json["idPatient"];
    imagen = json["Imagen"];
    medicaciones = json["Medicaciones"];
    plandeTratamiento = json["PlandeTratamiento"];
    diagnostico = json["Diagnostico"];
    claseCanina1 = json["ClaseCanina1"];
    claseCanina2 = json["ClaseCanina2"];
    clasificacionAngleCanina1 = json["ClasificacionAngleCanina1"];
    clasificacionAngleCanina2 = json["ClasificacionAngleCanina2"];
    claseMolar1 = json["ClaseMolar1"];
    claseMolar2 = json["ClaseMolar2"];
    clasificacionAngleMolar1 = json["ClasificacionAngleMolar1"];
    clasificacionAngleMolar2 = json["ClasificacionAngleMolar2"];
    divisionesMolar1 = json["DivisionesMolar1"];
    divisionesMolar2 = json["DivisionesMolar2"];
    divisionesMolarV1 = json["DivisionesMolarV1"];
    divisionesMolarV2 = json["DivisionesMolarV2"];
    categoriasMolar1 = json["CategoriasMolar1"];
    categoriasMolar2 = json["CategoriasMolar2"];
    claseEsqueletalClasificacionAngle = json["ClaseEsqueletalClasificacionAngle"];
    overjet = json["Overjet"];
    overBite = json["OverBite"];
    lineaMedia = json["LineaMedia"];
    tipodePerfil = json["TipodePerfil"];
    gOGNPMAX = json["gOGNPMAX"];
    sUPINF = json["sUPINF"];
    aNB = json["aNB"];
    sNB = json["sNB"];
    sNA = json["sNA"];
    sNGN = json["sNGN"];
    sNGOGN = json["sNGOGN"];
    sNPLO = json["sNPLO"];
    sNFH = json["sNFH"];
  }


  SeguimientoOrtod.fromJson(Map<dynamic, dynamic> json) {
    id = json["id"];
   idPatient = json["idPatient"];
    imagen = json["Imagen"];
    medicaciones = json["Medicaciones"];
    plandeTratamiento = json["PlandeTratamiento"];
    diagnostico = json["Diagnostico"];
    claseCanina1 = json["ClaseCanina1"];
    claseCanina2 = json["ClaseCanina2"];
    clasificacionAngleCanina1 = json["ClasificacionAngleCanina1"];
    clasificacionAngleCanina2 = json["ClasificacionAngleCanina2"];
    claseMolar1 = json["ClaseMolar1"];
    claseMolar2 = json["ClaseMolar2"];
    clasificacionAngleMolar1 = json["ClasificacionAngleMolar1"];
    clasificacionAngleMolar2 = json["ClasificacionAngleMolar2"];
    divisionesMolar1 = json["DivisionesMolar1"];
    divisionesMolar2 = json["DivisionesMolar2"];
    divisionesMolarV1 = json["DivisionesMolarV1"];
    divisionesMolarV2 = json["DivisionesMolarV2"];
    categoriasMolar1 = json["CategoriasMolar1"];
    categoriasMolar2 = json["CategoriasMolar2"];
    claseEsqueletalClasificacionAngle = json["ClaseEsqueletalClasificacionAngle"];
    overjet = json["Overjet"];
    overBite = json["OverBite"];
    lineaMedia = json["LineaMedia"];
    tipodePerfil = json["TipodePerfil"];
    gOGNPMAX = json["gOGNPMAX"];
    sUPINF = json["sUPINF"];
    aNB = json["aNB"];
    sNB = json["sNB"];
    sNA = json["sNA"];
    sNGN = json["sNGN"];
    sNGOGN = json["sNGOGN"];
    sNPLO = json["sNPLO"];
    sNFH = json["sNFH"];
  
  
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "idPatient" : idPatient,
        "imagen" : imagen,
        "Medicaciones" : medicaciones,
        "PlandeTratamiento" : plandeTratamiento,
        "Diagnostico" : diagnostico,
        "ClaseCanina1" : claseCanina1,
        "ClaseCanina2" : claseCanina2,
        "ClasificacionAngleCanina1" : clasificacionAngleCanina1,
        "ClasificacionAngleCanina2" : clasificacionAngleCanina2,
        "ClaseMolar1" : claseMolar1,
        "ClaseMolar2" : claseMolar2,
        "ClasificacionAngleMolar1" : clasificacionAngleMolar1,
        "ClasificacionAngleMolar2" : clasificacionAngleMolar2,
        "DivisionesMolar1" : divisionesMolar1,
        "DivisionesMolar2" : divisionesMolar2,
        "DivisionesMolarV1" : divisionesMolarV1,
        "DivisionesMolarV2" : divisionesMolarV2,
        "CategoriasMolar1" : categoriasMolar1,
        "CategoriasMolar2" : categoriasMolar2,
        "ClaseEsqueletalClasificacionAngle" : claseEsqueletalClasificacionAngle,
        "Overjet" : overjet,
        "OverBite" : overBite,
        "LineaMedia" : lineaMedia,
        "TipodePerfil" : tipodePerfil,
        "gOGNPMAX" : gOGNPMAX,
        "sUPINF" : sUPINF,
        "aNB" : aNB,
        "sNB" : sNB,
        "sNA" : sNA,
        "sNGN" : sNGN,
        "nAPOG" : nAPOG,
        "sNGOGN" : sNGOGN,
        "sNPLO" : sNPLO,
        "sNFH" : sNFH,
      
      };
      
}
