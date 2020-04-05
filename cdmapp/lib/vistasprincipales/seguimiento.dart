import 'package:cdmapp/class/seguimientoOrtodonciaclass.dart';
import 'package:cdmapp/class/seguimientoTodos.dart';
import 'package:cdmapp/class/seguimientoadienteclass.dart';
import 'package:cdmapp/seguimientosglobal/seguimientoOdontograma.dart';
import 'package:cdmapp/seguimientosglobal/seguimientoortodoncia.dart';
import 'package:cdmapp/seguimientosglobal/seguimientotodos.dart';
import 'package:flutter/material.dart';

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
                              print(widget.odontogramas[0].nombrePadecimiento32);
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
}