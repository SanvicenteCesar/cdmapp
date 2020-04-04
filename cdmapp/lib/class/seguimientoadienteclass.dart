class SeguimientoAdiente {
  List<Seguimientoadiente> items = new List();

  SeguimientoAdiente();

  SeguimientoAdiente.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final work = new Seguimientoadiente.mapeado(item);
      items.add(work);
    } //fin for
  }

  SeguimientoAdiente.fromJsonMap(decodedData); //fin constructor

}

class Seguimientoadiente {
    int id;
    String idPatient;
    String status;
    String diagnosticoCompleto;
    String nombrePadecimiento1;
    String imagen1;
    String nombrePadecimiento2;
    String imagen2;
    String nombrePadecimiento3;
    String imagen3;
    String nombrePadecimiento4;
    String imagen4;
    String nombrePadecimiento5;
    String imagen5;
    String nombrePadecimiento6;
    String imagen6;
    String nombrePadecimiento7;
    String imagen7;
    String nombrePadecimiento8;
    String imagen8;
    String nombrePadecimiento9;
    String imagen9;
    String nombrePadecimiento10;
    String imagen10;
    String nombrePadecimiento11;
    String imagen11;
    String nombrePadecimiento12;
    String imagen12;
    String nombrePadecimiento13;
    String imagen13;
    String nombrePadecimiento14;
    String imagen14;
    String nombrePadecimiento15;
    String imagen15;
    String nombrePadecimiento16;
    String imagen16;
    String nombrePadecimiento17;
    String imagen17;
    String nombrePadecimiento18;
    String imagen18;
    String nombrePadecimiento19;
    String imagen19;
    String nombrePadecimiento20;
    String imagen20;
    String nombrePadecimiento21;
    String imagen21;
    String nombrePadecimiento22;
    String imagen22;
    String nombrePadecimiento23;
    String imagen23;
    String nombrePadecimiento24;
    String imagen24;
    String nombrePadecimiento25;
    String imagen25;
    String nombrePadecimiento26;
    String imagen26;
    String nombrePadecimiento27;
    String imagen27;
    String nombrePadecimiento28;
    String imagen28;
    String nombrePadecimiento29;
    String imagen29;
    String nombrePadecimiento30;
    String imagen30;
    String nombrePadecimiento31;
    String imagen31;
    String nombrePadecimiento32;
    String imagen32;
    
  Seguimientoadiente({
this.id,
this.idPatient,
this.status,
this.diagnosticoCompleto,
this.nombrePadecimiento1,
this.imagen1,
this.nombrePadecimiento2,
this.imagen2,
this.nombrePadecimiento3,
this.imagen3,
this.nombrePadecimiento4,
this.imagen4,
this.nombrePadecimiento5,
this.imagen5,
this.nombrePadecimiento6,
this.imagen6,
this.nombrePadecimiento7,
this.imagen7,
this.nombrePadecimiento8,
this.imagen8,
this.nombrePadecimiento9,
this.imagen9,
this.nombrePadecimiento10,
this.imagen10,
this.nombrePadecimiento11,
this.imagen11,
this.nombrePadecimiento12,
this.imagen12,
this.nombrePadecimiento13,
this.imagen13,
this.nombrePadecimiento14,
this.imagen14,
this.nombrePadecimiento15,
this.imagen15,
this.nombrePadecimiento16,
this.imagen16,
this.nombrePadecimiento17,
this.imagen17,
this.nombrePadecimiento18,
this.imagen18,
this.nombrePadecimiento19,
this.imagen19,
this.nombrePadecimiento20,
this.imagen20,
this.nombrePadecimiento21,
this.imagen21,
this.nombrePadecimiento22,
this.imagen22,
this.nombrePadecimiento23,
this.imagen23,
this.nombrePadecimiento24,
this.imagen24,
this.nombrePadecimiento25,
this.imagen25,
this.nombrePadecimiento26,
this.imagen26,
this.nombrePadecimiento27,
this.imagen27,
this.nombrePadecimiento28,
this.imagen28,
this.nombrePadecimiento29,
this.imagen29,
this.nombrePadecimiento30,
this.imagen30,
this.nombrePadecimiento31,
this.imagen31,
this.nombrePadecimiento32,
this.imagen32,
    
    
  });
  Seguimientoadiente.mapeado(Map<dynamic, dynamic> json) {
    id = json["id"];
    status = json["status"];
    diagnosticoCompleto = json["diagnosticoCompleto"];
    nombrePadecimiento1 = json["NombrePadecimiento1"];
    imagen1 = json["Imagen1"];
    nombrePadecimiento2 = json["NombrePadecimiento2"];
    imagen2 = json["Imagen2"];
    nombrePadecimiento3 = json["NombrePadecimiento3"];
    imagen3 = json["Imagen3"];
    nombrePadecimiento4 = json["NombrePadecimiento4"];
    imagen4 = json["Imagen4"];
    nombrePadecimiento5 = json["NombrePadecimiento5"];
    imagen5 = json["Imagen5"];
    nombrePadecimiento6 = json["NombrePadecimiento6"];
    imagen6 = json["Imagen6"];
    nombrePadecimiento7 = json["NombrePadecimiento7"];
    imagen7 = json["Imagen7"];
    nombrePadecimiento8 = json["NombrePadecimiento8"];
    imagen8 = json["Imagen8"];
    nombrePadecimiento9 = json["NombrePadecimiento9"];
    imagen9 = json["Imagen9"];
    nombrePadecimiento10 = json["NombrePadecimiento10"];
    imagen10 = json["Imagen10"];
    nombrePadecimiento11 = json["NombrePadecimiento11"];
    imagen11 = json["Imagen11"];
    nombrePadecimiento12 = json["NombrePadecimiento12"];
    imagen12 = json["Imagen12"];
    nombrePadecimiento13 = json["NombrePadecimiento13"];
    imagen13 = json["Imagen13"];
    nombrePadecimiento14 = json["NombrePadecimiento14"];
    imagen14 = json["Imagen14"];
    nombrePadecimiento15 = json["NombrePadecimiento15"];
    imagen15 = json["Imagen15"];
    nombrePadecimiento16 = json["NombrePadecimiento16"];
    imagen16 = json["Imagen16"];
    nombrePadecimiento17 = json["NombrePadecimiento17"];
    imagen17 = json["Imagen17"];
    nombrePadecimiento18 = json["NombrePadecimiento18"];
    imagen18 = json["Imagen18"];
    nombrePadecimiento19 = json["NombrePadecimiento19"];
    imagen19 = json["Imagen19"];
    nombrePadecimiento20 = json["NombrePadecimiento20"];
    imagen20 = json["Imagen20"];
    nombrePadecimiento21 = json["NombrePadecimiento21"];
    imagen21 = json["Imagen21"];
    nombrePadecimiento22 = json["NombrePadecimiento22"];
    imagen22 = json["Imagen22"];
    nombrePadecimiento23 = json["NombrePadecimiento23"];
    imagen23 = json["Imagen23"];
    nombrePadecimiento24 = json["NombrePadecimiento24"];
    imagen24 = json["Imagen24"];
    nombrePadecimiento25 = json["NombrePadecimiento25"];
    imagen25 = json["Imagen25"];
    nombrePadecimiento26 = json["NombrePadecimiento26"];
    imagen26 = json["Imagen26"];
    nombrePadecimiento27 = json["NombrePadecimiento27"];
    imagen27 = json["Imagen27"];
    nombrePadecimiento28 = json["NombrePadecimiento28"];
    imagen28 = json["Imagen28"];
    nombrePadecimiento29 = json["NombrePadecimiento29"];
    imagen29 = json["Imagen29"];
    nombrePadecimiento30 = json["NombrePadecimiento30"];
    imagen30 = json["Imagen30"];
    nombrePadecimiento31 = json["NombrePadecimiento31"];
    imagen31 = json["Imagen31"];
    nombrePadecimiento32 = json["NombrePadecimiento32"];
    imagen32 = json["Imagen32"];
    
  }


  Seguimientoadiente.fromJson(Map<dynamic, dynamic> json) {
   id = json["id"];
    status = json["status"];
    diagnosticoCompleto = json["diagnosticoCompleto"];
    nombrePadecimiento1 = json["NombrePadecimiento1"];
    imagen1 = json["Imagen1"];
    nombrePadecimiento2 = json["NombrePadecimiento2"];
    imagen2 = json["Imagen2"];
    nombrePadecimiento3 = json["NombrePadecimiento3"];
    imagen3 = json["Imagen3"];
    nombrePadecimiento4 = json["NombrePadecimiento4"];
    imagen4 = json["Imagen4"];
    nombrePadecimiento5 = json["NombrePadecimiento5"];
    imagen5 = json["Imagen5"];
    nombrePadecimiento6 = json["NombrePadecimiento6"];
    imagen6 = json["Imagen6"];
    nombrePadecimiento7 = json["NombrePadecimiento7"];
    imagen7 = json["Imagen7"];
    nombrePadecimiento8 = json["NombrePadecimiento8"];
    imagen8 = json["Imagen8"];
    nombrePadecimiento9 = json["NombrePadecimiento9"];
    imagen9 = json["Imagen9"];
    nombrePadecimiento10 = json["NombrePadecimiento10"];
    imagen10 = json["Imagen10"];
    nombrePadecimiento11 = json["NombrePadecimiento11"];
    imagen11 = json["Imagen11"];
    nombrePadecimiento12 = json["NombrePadecimiento12"];
    imagen12 = json["Imagen12"];
    nombrePadecimiento13 = json["NombrePadecimiento13"];
    imagen13 = json["Imagen13"];
    nombrePadecimiento14 = json["NombrePadecimiento14"];
    imagen14 = json["Imagen14"];
    nombrePadecimiento15 = json["NombrePadecimiento15"];
    imagen15 = json["Imagen15"];
    nombrePadecimiento16 = json["NombrePadecimiento16"];
    imagen16 = json["Imagen16"];
    nombrePadecimiento17 = json["NombrePadecimiento17"];
    imagen17 = json["Imagen17"];
    nombrePadecimiento18 = json["NombrePadecimiento18"];
    imagen18 = json["Imagen18"];
    nombrePadecimiento19 = json["NombrePadecimiento19"];
    imagen19 = json["Imagen19"];
    nombrePadecimiento20 = json["NombrePadecimiento20"];
    imagen20 = json["Imagen20"];
    nombrePadecimiento21 = json["NombrePadecimiento21"];
    imagen21 = json["Imagen21"];
    nombrePadecimiento22 = json["NombrePadecimiento22"];
    imagen22 = json["Imagen22"];
    nombrePadecimiento23 = json["NombrePadecimiento23"];
    imagen23 = json["Imagen23"];
    nombrePadecimiento24 = json["NombrePadecimiento24"];
    imagen24 = json["Imagen24"];
    nombrePadecimiento25 = json["NombrePadecimiento25"];
    imagen25 = json["Imagen25"];
    nombrePadecimiento26 = json["NombrePadecimiento26"];
    imagen26 = json["Imagen26"];
    nombrePadecimiento27 = json["NombrePadecimiento27"];
    imagen27 = json["Imagen27"];
    nombrePadecimiento28 = json["NombrePadecimiento28"];
    imagen28 = json["Imagen28"];
    nombrePadecimiento29 = json["NombrePadecimiento29"];
    imagen29 = json["Imagen29"];
    nombrePadecimiento30 = json["NombrePadecimiento30"];
    imagen30 = json["Imagen30"];
    nombrePadecimiento31 = json["NombrePadecimiento31"];
    imagen31 = json["Imagen31"];
    nombrePadecimiento32 = json["NombrePadecimiento32"];
    imagen32 = json["Imagen32"];
  
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "idPatient" : idPatient,
        "status": status, 
        "diagnosticoCompleto": diagnosticoCompleto, 
        "NombrePadecimiento1": nombrePadecimiento1, 
        "Imagen1": imagen1, 
        "NombrePadecimiento2": nombrePadecimiento2, 
        "Imagen2": imagen2, 
        "NombrePadecimiento3": nombrePadecimiento3, 
        "Imagen3": imagen3, 
        "NombrePadecimiento4": nombrePadecimiento4, 
        "Imagen4": imagen4, 
        "NombrePadecimiento5": nombrePadecimiento5, 
        "Imagen5": imagen5, 
        "NombrePadecimiento6": nombrePadecimiento6, 
        "Imagen6": imagen6, 
        "NombrePadecimiento7": nombrePadecimiento7, 
        "Imagen7": imagen7, 
        "NombrePadecimiento8": nombrePadecimiento8, 
        "Imagen8": imagen8, 
        "NombrePadecimiento9": nombrePadecimiento9, 
        "Imagen9": imagen9, 
        "NombrePadecimiento10": nombrePadecimiento10, 
        "Imagen10": imagen10, 
        "NombrePadecimiento11": nombrePadecimiento11, 
        "Imagen11": imagen11, 
        "NombrePadecimiento12": nombrePadecimiento12, 
        "Imagen12": imagen12, 
        "NombrePadecimiento13": nombrePadecimiento13, 
        "Imagen13": imagen13, 
        "NombrePadecimiento14": nombrePadecimiento14, 
        "Imagen14": imagen14, 
        "NombrePadecimiento15": nombrePadecimiento15, 
        "Imagen15": imagen15, 
        "NombrePadecimiento16": nombrePadecimiento16, 
        "Imagen16": imagen16, 
        "NombrePadecimiento17": nombrePadecimiento17, 
        "Imagen17": imagen17, 
        "NombrePadecimiento18": nombrePadecimiento18, 
        "Imagen18": imagen18, 
        "NombrePadecimiento19": nombrePadecimiento19, 
        "Imagen19": imagen19, 
        "NombrePadecimiento20": nombrePadecimiento20, 
        "Imagen20": imagen20, 
        "NombrePadecimiento21": nombrePadecimiento21, 
        "Imagen21": imagen21, 
        "NombrePadecimiento22": nombrePadecimiento22, 
        "Imagen22": imagen22, 
        "NombrePadecimiento23": nombrePadecimiento23, 
        "Imagen23": imagen23, 
        "NombrePadecimiento24": nombrePadecimiento24, 
        "Imagen24": imagen24, 
        "NombrePadecimiento25": nombrePadecimiento25, 
        "Imagen25": imagen25, 
        "NombrePadecimiento26": nombrePadecimiento26, 
        "Imagen26": imagen26, 
        "NombrePadecimiento27": nombrePadecimiento27, 
        "Imagen27": imagen27, 
        "NombrePadecimiento28": nombrePadecimiento28, 
        "Imagen28": imagen28, 
        "NombrePadecimiento29": nombrePadecimiento29, 
        "Imagen29": imagen29, 
        "NombrePadecimiento30": nombrePadecimiento30, 
        "Imagen30": imagen30, 
        "NombrePadecimiento31": nombrePadecimiento31, 
        "Imagen31": imagen31, 
        "NombrePadecimiento32": nombrePadecimiento32, 
        "Imagen32": imagen32, 
      
      };
      
}
