import 'package:cdmapp/class/presupuestoclass.dart';
import 'package:flutter/material.dart';

class Presupuesto extends StatefulWidget {
  Presupuesto({this.presupuestos});

  final List<Presupuest> presupuestos;
  @override
  _PresupuestoState createState() => _PresupuestoState();
}

class _PresupuestoState extends State<Presupuesto> {
  @override

  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Presupuestos'),
        leading: Container(
          child: Icon(Icons.attach_money),
        ),
      ),
      body: ListView.builder(
            itemCount: widget.presupuestos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.receipt),
                title: Text('Fecha : '+ widget.presupuestos[index].fechadeCreacion,
                 style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                 ),),
                subtitle: Text('Estado: ' + widget.presupuestos[index].estatus),
                trailing: Icon(Icons.monetization_on ),
                onTap: (){
                 showDialog(
                    context: context,
                    builder: (BuildContext context) {
                        return AlertDialog(
                          title:Text("Presupuesto :  " + widget.presupuestos[index].presupuestoDolares + ' Debe: ' + widget.presupuestos[index].debe),
                          content:Text('Servicios Utilizados : ' + widget.presupuestos[index].serviciosTratados), 
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