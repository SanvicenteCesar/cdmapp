import 'package:cdmapp/class/consultasclass.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Consultas extends StatefulWidget {
  Consultas({this.consultas});

  final List<Consulta> consultas;
  @override
  _ConsultasState createState() => _ConsultasState();
}

class _ConsultasState extends State<Consultas> {
  @override
  void initState() {
   
    super.initState();
     setupNotificationPlugin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Consultas Personales'),
        leading: Container(
          child: Icon(Icons.calendar_today),
        ),
      ),
      body: ListView.builder(
            itemCount: widget.consultas.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Doctor : '+ widget.consultas[index].atendidoPor.toString(),
                 style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                 ),),
                subtitle: Text('Fecha: ' + widget.consultas[index].fechaPlanificada + '  Hora: ' + widget.consultas[index].hora),
                trailing: Icon(Icons.person),
                onTap: (){
                 showDialog(
                    context: context,
                    builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Estado : ' + widget.consultas[index].status),
                          content: Text("Motivo de Consulta :  " + widget.consultas[index].motive),
                          actions: [
                          FlatButton(
                            child: Text("Aceptar"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
          });
                },
              );
            },
          ),
    );
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