import 'package:cdmapp/class/seguimientoOrtodonciaclass.dart';
import 'package:cdmapp/class/seguimientoTodos.dart';
import 'package:cdmapp/class/seguimientoadienteclass.dart';
import 'package:cdmapp/seguimientosglobal/seguimientoOdontograma.dart';
import 'package:cdmapp/seguimientosglobal/seguimientoortodoncia.dart';
import 'package:cdmapp/seguimientosglobal/seguimientotodos.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Seguimiento extends StatefulWidget {

  Seguimiento({this.seguimientostodos,this.seguimientosortodoncias,this.odontogramas});

  final List<SeguimientoTod> seguimientostodos;
  final List<SeguimientoOrtod> seguimientosortodoncias;
  final List<Seguimientoadiente> odontogramas;
  @override
  _SeguimientoState createState() => _SeguimientoState();
}

class _SeguimientoState extends State<Seguimiento> {
   @override
  void initState() {
   
    super.initState();
     setupNotificationPlugin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            child: Container(
                               width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.23,      
                              child: Image.asset('assets/todoslosdientes.png')),
                            onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) => SeguimientoAtodos(seguimientosatodos: widget.seguimientostodos ,)));
                            },
                            ),
                        ),
                       
                        
                      ],
                    ),
                    elevation: 12,
                    
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            child: Container(
                               width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.23,      
                              child: Image.asset('assets/ortodoncia.png')),
                            onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) => SeguimientoOrtodoncia(seguimientoOrtodoncia: widget.seguimientosortodoncias ,)));

                            },
                            ),
                        ),
                      
                      ],
                    ),
                    elevation: 12,
                    
                  ),
                ),
               Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.23,      
                              child: Image.asset('assets/dxd.png')),
                            onPressed: (){
                            
                                Navigator.push(context, MaterialPageRoute(builder: (_) => Odontograma(odontogramas: widget.odontogramas ,)));
                            },
                            ),
                        ),
                         
                        
                      ],
                    ),
                    elevation: 12,
                    
                  ),
                ),
              ],
            ),
          ],
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
