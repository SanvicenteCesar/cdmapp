import 'package:cdmapp/class/pacienteclass.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
   Perfil({this.paciente});

  final Paciente paciente;
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Image.asset('assets/perfil.jpg')
          ),
         SizedBox(
           height: MediaQuery.of(context).size.height * 0.15,
         ),
         Container(
           width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height* 0.4,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Nombre:  ' + widget.paciente.name, style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                  ),)
                ],

              ),
              SizedBox(height: 10,),
               Row(
                children: <Widget>[
                  Text('Cedula:  ' + widget.paciente.dni, style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                  ),)
                ],

              ),
              SizedBox(height: 10,),
               Row(
                children: <Widget>[
                  Text('Celular:  ' + widget.paciente.mobile, style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                  ),)
                ],

              ),
              SizedBox(height: 10,),
               Row(
                children: <Widget>[
                  Text('Edad:  ' + widget.paciente.age.toString(), style: TextStyle(
                    fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                  ),),
                  SizedBox(height: 10,),
                   Row(
                children: <Widget>[
                   SizedBox(height: 10,),
                  Text('   Sexo:  ' + widget.paciente.sex, style: TextStyle(
                    fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                  ),)
                ],

              ),
                ],

              ),
               SizedBox(height: 10,),
               Row(
                children: <Widget>[
                  Text('Direccion:  ' + widget.paciente.homeAddress, style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                  ),)
                ],

              ),
                SizedBox(height: 10,),
               Row(
                children: <Widget>[
                  Text('Doctor Encargado :  ' + widget.paciente.registradoPor.toString(), style: TextStyle(
                    fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                  ),)
                ],

              ),
            ],
            
          ),
         ),
        ],
      ),
      
    );
  }
}