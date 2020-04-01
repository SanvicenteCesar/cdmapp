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
  String name;
  String dni;
  int age;
  String sex;
  String mail;
  String password;
  String userType;
  String username;
  String phone;
  String status;
  String statusC;
  String homeAddress;
  String occupation;
  String workAddress;
  String mobile;
  String birthplace;
  String sentBy;
  String dentalColor;
  String familyNumber;
  String numberEmergency;
  String familyNumberHome;
  String familyName;
  String registradoPor;

  Paciente({
    this.id,
    this.name,
    this.dni,
    this.age,
    this.sex,
    this.mail,
    this.password,
    this.userType,
    this.username,
    this.phone,
    this.status,
    this.statusC,
    this.homeAddress,
    this.occupation,
    this.workAddress,
    this.mobile,
    this.birthplace,
    this.sentBy,
    this.dentalColor,
    this.familyNumber,
    this.numberEmergency,
    this.familyNumberHome,
    this.familyName,
    this.registradoPor,
  });

  Paciente.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    dni = json["dni"];
    age = json["age"];
    sex = json["sex"];
    mail = json["mail"];
    password = json["password"];
    userType = json["userType"];
    username = json["username"];
    phone = json["phone"];
    status = json["status"];
     statusC = json["statusC"];
    homeAddress = json["homeAddress"];
    occupation = json["occupation"];
    workAddress = json["workAddress"];
    mobile = json["mobile"];
    birthplace = json["birthplace"];
    sentBy = json["sentBy"];
    dentalColor = json["dentalColor"];
    familyNumber = json["familyNumber"];
    numberEmergency = json["numberEmergency"];
    familyNumberHome = json["familyNumberHome"];
     familyName = json["familyName"];
    registradoPor = json["registradoPor"];
  }
  Paciente.mapeado(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    dni = json["dni"];
    age = json["age"];
    sex = json["sex"];
    mail = json["mail"];
    password = json["password"];
    userType = json["userType"];
    username = json["username"];
    phone = json["phone"];
    status = json["status"];
     statusC = json["statusC"];
    homeAddress = json["homeAddress"];
    occupation = json["occupation"];
    workAddress = json["workAddress"];
    mobile = json["mobile"];
    birthplace = json["birthplace"];
    sentBy = json["sentBy"];
    dentalColor = json["dentalColor"];
    familyNumber = json["familyNumber"];
    numberEmergency = json["numberEmergency"];
    familyNumberHome = json["familyNumberHome"];
     familyName = json["familyName"];
    registradoPor = json["registradoPor"];
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "dni": dni,
        "age": age,
        "sex": sex,
        "mail": mail,
        "password": password,
        "userType": userType,
        "username": username,
        "phone": phone,
        "status": status,
         "statusC": statusC,
        "homeAddress": homeAddress,
        "occupation": occupation,
        "workAddress": workAddress,
        "mobile": mobile,
        "birthplace": birthplace,
        "sentBy": sentBy,
        "dentalColor": dentalColor,
        "familyNumber": familyNumber,
        "numberEmergency": numberEmergency,
        "familyNumberHome": familyNumberHome,
        "familyName": familyName,
        "registradoPor": registradoPor,
      };
}