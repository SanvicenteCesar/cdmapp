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
              return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/odn.png'),
                              ),
                             FlatButton(
                               color: Colors.pink,
                                onPressed: (){
                                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Detalles'),
                          content: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("Estatus: " + widget.seguimientosatodos[index].estatus),
                                 ),
                                Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Procedimiento Aplicado: " + widget.seguimientosatodos[index].procedimientoOdontologico),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Diagnostico: " + widget.seguimientosatodos[index].diagnostico),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Observaciones: " + widget.seguimientosatodos[index].observaciones),
                        ),
                              ],
                            ),
                          ),
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
                                child: Text("Ver Detalles", style: TextStyle(color: Colors.white), )),
                            ],
                          ),
                        ),
                         
                      
                      ],
                    ),
                  ),
                );
            },
          ),
    );
  }
}