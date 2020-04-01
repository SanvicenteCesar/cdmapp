import 'package:cdmapp/class/consultasclass.dart';
import 'package:flutter/material.dart';

class Consultas extends StatefulWidget {
  Consultas({this.consultas});

  final List<Consulta> consultas;
  @override
  _ConsultasState createState() => _ConsultasState();
}

class _ConsultasState extends State<Consultas> {
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
  
}