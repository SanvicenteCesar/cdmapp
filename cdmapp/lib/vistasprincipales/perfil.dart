import 'package:cdmapp/class/pacienteclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Perfil extends StatefulWidget {
   Perfil({this.paciente});

  final Paciente paciente;
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset('assets/perfil.jpg')
            ),
           SizedBox(
             height: MediaQuery.of(context).size.height * 0.15,
           ),
           Container(
             width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height* 0.4,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Nombre:  ' + widget.paciente.name, style: TextStyle(
                       fontSize: 20,
                       fontStyle: FontStyle.italic,
                       color: Colors.black87,
                       letterSpacing: 0.4
                      ),),
                    )
                  ],

                ),
                SizedBox(height: 10,),
                 Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Cedula:  ' + widget.paciente.dni, style: TextStyle(
                       fontSize: 20,
                       fontStyle: FontStyle.italic,
                       color: Colors.black87,
                       letterSpacing: 0.4
                      ),),
                    )
                  ],

                ),
                SizedBox(height: 10,),
                 Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Celular:  ' + widget.paciente.mobile, style: TextStyle(
                       fontSize: 20,
                       fontStyle: FontStyle.italic,
                       color: Colors.black87,
                       letterSpacing: 0.4
                      ),),
                    )
                  ],

                ),
                SizedBox(height: 10,),
                 Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Edad:  ' + widget.paciente.age.toString(), style: TextStyle(
                        fontSize: 20,
                       fontStyle: FontStyle.italic,
                       color: Colors.black87,
                       letterSpacing: 0.4
                      ),),
                    ),
                    SizedBox(height: 10,),
                     Row(
                  children: <Widget>[
                     SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('   Sexo:  ' + widget.paciente.sex, style: TextStyle(
                        fontSize: 20,
                       fontStyle: FontStyle.italic,
                       color: Colors.black87,
                       letterSpacing: 0.4
                      ),),
                    )
                  ],

                ),
                  ],

                ),
                 SizedBox(height: 10,),
                 Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Direccion:  ' + widget.paciente.homeAddress, style: TextStyle(
                       fontSize: 20,
                       fontStyle: FontStyle.italic,
                       color: Colors.black87,
                       letterSpacing: 0.4
                      ),),
                    )
                  ],

                ),
                  SizedBox(height: 10,),
                 Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Doctor Encargado :  ' + widget.paciente.registradoPor.toString(), style: TextStyle(
                        fontSize: 20,
                       fontStyle: FontStyle.italic,
                       color: Colors.black87,
                       letterSpacing: 0.4
                      ),),
                    )
                  ],

                ),
              ],
              
            ),
           ),
          ],
        ),
      ),
      
    );
  }
  Future<void> setupNotificationPlugin() async {
    
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