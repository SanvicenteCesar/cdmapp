import 'dart:convert';
import 'dart:typed_data';

import 'package:cdmapp/class/evolucionclass.dart';
import 'package:flutter/material.dart';

class Evolucion extends StatefulWidget {
  Evolucion({this.evoluciones});

  final List<Evolucio> evoluciones;
  @override
  _EvolucionState createState() => _EvolucionState();
}

class _EvolucionState extends State<Evolucion> {
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Evoluciones Personales'),
        leading: Container(
          child: Icon(Icons.calendar_today),
        ),
      ),
      body: ListView.builder(
            itemCount: widget.evoluciones.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.photo_size_select_actual),
                title: Text('Diagnostico : '+ widget.evoluciones[index].diagnostic.toString(),
                 style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                 ),),
               
                trailing: Icon(Icons.add_to_photos),
                onTap: (){
                 showDialog(
                    context: context,
                    builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height:MediaQuery.of(context).size.height* 0.7,
                          child: AlertDialog(
                          title: Text('Imagen Registrada'),
                         content: Image.memory(dataFromBase64String(widget.evoluciones[index].imagen)),
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
  String base64String(Uint8List data) {
    return base64Encode(data);
  }

  Image imageFromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String));
  }

  Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

}