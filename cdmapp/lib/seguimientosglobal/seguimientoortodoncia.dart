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
                                padding: const EdgeInsets.all(18.0),
                                child: Image.asset('assets/otr.png'),
                              ),
                              Text("Diagnostico : " + widget.seguimientoOrtodoncia[index].diagnostico),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Medicaciones : " + widget.seguimientoOrtodoncia[index].medicaciones),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Plan de tratamiento : " + widget.seguimientoOrtodoncia[index].plandeTratamiento),
                        )
                      ],
                    ),
                  ),
                );
                
              },
            ),
      ),
    );
  }
}