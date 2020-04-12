import 'dart:convert';

import 'package:cdmapp/class/consultasclass.dart';
import 'package:cdmapp/class/evolucionclass.dart';
import 'package:cdmapp/class/pacienteclass.dart';
import 'package:cdmapp/class/presupuestoclass.dart';
import 'package:cdmapp/class/recipeclass.dart';
import 'package:cdmapp/class/seguimientoOrtodonciaclass.dart';
import 'package:cdmapp/class/seguimientoTodos.dart';
import 'package:cdmapp/class/seguimientoadienteclass.dart';
import 'package:cdmapp/vistasprincipales/consultas.dart';
import 'package:cdmapp/vistasprincipales/evolucion.dart';
import 'package:cdmapp/vistasprincipales/perfil.dart';
import 'package:cdmapp/vistasprincipales/presupuesto.dart';
import 'package:cdmapp/vistasprincipales/recipe.dart';
import 'package:cdmapp/vistasprincipales/seguimiento.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
class Home extends StatefulWidget {

  Home({this.pacient});

  final Paciente pacient;
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  List<Recip> _recipe = new List<Recip>();
  List<Presupuest> _presupuestos = new List<Presupuest>();
  List<Consulta> _consultas = new List<Consulta>();
  List<Evolucio> _evoluciones = new List<Evolucio>();
   List<SeguimientoTod> _seguimientoTodos = new List<SeguimientoTod>();
   List<SeguimientoOrtod> _seguimientoOrtodoncia = new List<SeguimientoOrtod>();
    List<Seguimientoadiente> _seguimientoOdontograma = new List<Seguimientoadiente>();
   int _currentindex = 0;
@override
  void initState() {
   traerRecipes();
   traerPresupuestos();
   traerCosultas();
   traerEvolucion();
   traerseguimientotodosdiente();
   traerseguimientoOrtodoncia();
   traerseguimientoOdontograma();
    super.initState();
     setupNotificationPlugin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Consultorio Dental Merida'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.remove_circle), onPressed: (){
            Navigator.pop(context);
          })
        ],

      ),
      body: ver(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: cambiarVista,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.folder_shared),
            title: Text('')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text('')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('')
          ),
          
        ],

      ),
    );
  }
  Widget ver() {
    switch (_currentindex) {
      case 0:
          return Perfil(paciente: widget.pacient);
        break;
      case 1:
          return Consultas(consultas: _consultas);
        break;
      case 2:
         return  Evolucion(evoluciones: _evoluciones,);
        break;
      case 3:
         return Recipes(recipes: _recipe,);
        break;
      case 4:
           return  Presupuesto(presupuestos: _presupuestos,);
        break;
        case 5:
           return  Seguimiento(seguimientostodos: _seguimientoTodos,seguimientosortodoncias: _seguimientoOrtodoncia, odontogramas: _seguimientoOdontograma,);
        break;
        
      default:
    }

  }
 void cambiarVista(int index) {
   setState(() {
     _currentindex = index;
   });

 }
   void traerRecipes() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://192.168.0.103:3000/recipe/patientrecipe$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Recipe.fromJsonList(decodedData);
     
        _recipe = variable.items;
    });
    }
   void traerPresupuestos() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://192.168.0.103:3000/presupuesto/patientpresupuesto$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Presupuests.fromJsonList(decodedData);
       
        _presupuestos = variable.items;
    });
    }
     void traerCosultas() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://192.168.0.103:3000/consulta/patient$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Consults.fromJsonList(decodedData);
      
        _consultas = variable.items;
    });
    }

     void traerEvolucion() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://192.168.0.103:3000/evolution/patient$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Evolucions.fromJsonList(decodedData);
      
        _evoluciones = variable.items;
    });
    }
     void traerseguimientotodosdiente() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://192.168.0.103:3000/seguimientotodosdientes/patientseguimiento$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new SeguimientoTodos.fromJsonList(decodedData);
       
        _seguimientoTodos = variable.items;
    });
    }
     void traerseguimientoOrtodoncia() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://192.168.0.103:3000/ortodoncia/patient/ortodoncia/$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new SeguimientoOrtodon.fromJsonList(decodedData);
      
        _seguimientoOrtodoncia = variable.items;
    });
    }
    void traerseguimientoOdontograma() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://192.168.0.103:3000/odontograma/patient$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new SeguimientoAdiente.fromJsonList(decodedData);
      
        _seguimientoOdontograma = variable.items;
    });
    }
    Future<void> setupNotificationPlugin() async {
      var now = new DateTime.now();
      String hoy = formatDate(now,[HH, ':', nn]);
     if (hoy.toString() == '11:55') {

     }
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
var initializationSettingsAndroid = AndroidInitializationSettings('launch_image');
var initializationSettingsIOS = IOSInitializationSettings(
    onDidReceiveLocalNotification: onDidReceiveLocalNotification);
var initializationSettings = InitializationSettings(
    initializationSettingsAndroid, initializationSettingsIOS);
await flutterLocalNotificationsPlugin.initialize(initializationSettings,
    onSelectNotification: selectNotification);
  print('------Notificaciones----');
 var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'your channel id', 'your channel name', 'your channel description',
    importance: Importance.Max, priority: Priority.High, ticker: 'ticker');
var iOSPlatformChannelSpecifics = IOSNotificationDetails();
var platformChannelSpecifics = NotificationDetails(
    androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
await flutterLocalNotificationsPlugin.show(
    0, ' Notificaciones de Consultas', 'Recuerde visualizar hoy las consultas.', platformChannelSpecifics,
    payload: 'item x');
  }

 Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
            title: Text(title),
            content: Text(body),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text('Ok'),
                onPressed: () async {
                  Navigator.of(context, rootNavigator: true).pop();
                  
                },
              )
            ],
          ),
    );
  }
  Future selectNotification(String payload) async {
    if (payload == null) {
      debugPrint('notification payload: ' + payload);
    }
  
}
}
