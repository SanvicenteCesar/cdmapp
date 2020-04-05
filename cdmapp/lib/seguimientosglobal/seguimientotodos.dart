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
                  height: MediaQuery.of(context).size.height * 0.5,
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
                              Text("Estatus : " + widget.seguimientosatodos[index].estatus),
                            ],
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Procedimiento Aplicado : " + widget.seguimientosatodos[index].procedimientoOdontologico),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Diagnostico : " + widget.seguimientosatodos[index].diagnostico),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Observaciones : " + widget.seguimientosatodos[index].observaciones),
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