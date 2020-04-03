import 'package:cdmapp/class/seguimientoTodos.dart';
import 'package:flutter/material.dart';

class SeguimientoAtodos extends StatefulWidget {
  SeguimientoAtodos({this.seguimientosatodos});

  final List<SeguimientoTod> seguimientosatodos;

  @override
  _SeguimientoAtodosState createState() => _SeguimientoAtodosState();
}

class _SeguimientoAtodosState extends State<SeguimientoAtodos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seguimiento"),

      ),
      body: ListView.builder(
            itemCount: widget.seguimientosatodos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.search),
                title: Text('Proced: '+ widget.seguimientosatodos[index].procedimientoOdontologico,
                 style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                 ),),
                subtitle: Text('Diagnostico: ' + widget.seguimientosatodos[index].diagnostico +' Estado: ' + widget.seguimientosatodos[index].diagnostico,
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
                            title: Text('Estado : ' + widget.seguimientosatodos[index].estatus),
                            content:Column(
                              children: <Widget>[
                               Container(
                                 child: Text("Recomendaciones:"),

                               ),
                               Text(widget.seguimientosatodos[index].recomendaciones),
                                  Container(
                                 child: Text("Observaciones:"),

                               ),
                               Text(widget.seguimientosatodos[index].observaciones),
                              
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
    );
  }
}