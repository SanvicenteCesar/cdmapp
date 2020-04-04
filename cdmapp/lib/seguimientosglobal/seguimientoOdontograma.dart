import 'dart:convert';
import 'dart:typed_data';
import 'package:cdmapp/class/seguimientoadienteclass.dart';
import 'package:flutter/material.dart';

class Odontograma extends StatefulWidget {
  Odontograma({this.odontogramas});

  final List<Seguimientoadiente> odontogramas;

  @override
  _OdontogramaState createState() => _OdontogramaState();
}

class _OdontogramaState extends State<Odontograma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seguimiento a Procedimientos a Dientes individuales"),

      ),
      body: ListView.builder(
            itemCount: widget.odontogramas.length,
            itemBuilder: (context, index) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Card(
                    color: Colors.grey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Row(
                            children: <Widget>[
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen1))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen2))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen3))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen4))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen5))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen6))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen7))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen8))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen9))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen10))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen11))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen12))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen13))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen14))),
                             Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen15))),
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen16))),
                            ],

                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen17))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen18))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen19))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen20))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen21))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen22))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen23))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen24))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen25))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen26))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen27))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen28))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen29))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen30))),
                           Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen31))),
                          Container(width: 23,height: 40, child: Image.memory(dataFromBase64String(widget.odontogramas[index].imagen32))),
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text("Estado del Procedimiento:  " + widget.odontogramas[index].status,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Diagnostico:  "+ widget.odontogramas[index].diagnosticoCompleto,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),),
                        ),
                       
                      ],
                    )
                  )
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