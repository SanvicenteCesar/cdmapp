import 'package:cdmapp/class/seguimientoOrtodonciaclass.dart';
import 'package:cdmapp/class/seguimientoTodos.dart';
import 'package:flutter/material.dart';

class SeguimientoOrtodoncia extends StatefulWidget {
  SeguimientoOrtodoncia({this.seguimientoOrtodoncia});

  final List<SeguimientoOrtod> seguimientoOrtodoncia;

  @override
  _SeguimientoOrtodonciaState createState() => _SeguimientoOrtodonciaState();
}

class _SeguimientoOrtodonciaState extends State<SeguimientoOrtodoncia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ortodoncia"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
              itemCount: widget.seguimientoOrtodoncia.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.search),
                  title: Text('Proced: '+ widget.seguimientoOrtodoncia[index].diagnostico,
                   style: TextStyle(
                     fontSize: 20,
                     fontStyle: FontStyle.italic,
                     color: Colors.black87,
                     letterSpacing: 0.4
                   ),),
                  subtitle: Text('Diagnostico: ' + widget.seguimientoOrtodoncia[index].diagnostico +' Estado: ' + widget.seguimientoOrtodoncia[index].diagnostico,
                   style: TextStyle(
                     fontSize: 20,
                     fontStyle: FontStyle.italic,
                     color: Colors.black87,
                     letterSpacing: 0.4
                   ), ),
                  trailing: Icon(Icons.person),
                  onTap: (){
                   showDialog(
                      context: context,
                      builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: AlertDialog(
                              title: Text('Estado : ' + widget.seguimientoOrtodoncia[index].diagnostico),
                              content:Column(
                                children: <Widget>[
                                 Container(
                                   child: Text("Recomendaciones:"),

                                 ),
                                 Text(widget.seguimientoOrtodoncia[index].diagnostico),
                                    Container(
                                   child: Text("Observaciones:"),

                                 ),
                                 Text(widget.seguimientoOrtodoncia[index].diagnostico),
                                
                                   ],
                              ) ,
                              actions: [
                              FlatButton(
                                child: Text("Aceptar"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                        ),
                          );
            });
                  },
                );
              },
            ),
      ),
    );
  }
}