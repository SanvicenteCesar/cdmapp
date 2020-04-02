import 'dart:convert';

import 'package:cdmapp/class/consultasclass.dart';
import 'package:cdmapp/class/evolucionclass.dart';
import 'package:cdmapp/class/pacienteclass.dart';
import 'package:cdmapp/class/presupuestoclass.dart';
import 'package:cdmapp/class/recipeclass.dart';
import 'package:cdmapp/vistasprincipales/consultas.dart';
import 'package:cdmapp/vistasprincipales/evolucion.dart';
import 'package:cdmapp/vistasprincipales/perfil.dart';
import 'package:cdmapp/vistasprincipales/presupuesto.dart';
import 'package:cdmapp/vistasprincipales/recipe.dart';
import 'package:cdmapp/vistasprincipales/seguimiento.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Home extends StatefulWidget {

  Home({this.pacient});

  final Paciente pacient;
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  List<Recip> _recipe = new List<Recip>();
  List<Presupuest> _presupuestos = new List<Presupuest>();
  List<Consulta> _consultas = new List<Consulta>();
   List<Evolucio> _evoluciones = new List<Evolucio>();
   int _currentindex = 0;
@override
  void initState() {
   traerRecipes();
   traerPresupuestos();
   traerCosultas();
   traerEvolucion();
   Recipes(recipes: _recipe,);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Consultorio Dental Merida'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.remove_circle), onPressed: (){
            Navigator.pop(context);
          })
        ],

      ),
      body: ver(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: cambiarVista,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepPurpleAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Inicio')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Consultas')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.folder_shared),
            title: Text('Evolucion')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text('Recipes')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Presupuesto')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Seguimiento')
          ),
          
        ],

      ),
    );
  }
  Widget ver() {
    switch (_currentindex) {
      case 0:
          return Perfil();
        break;
      case 1:
          return Consultas(consultas: _consultas);
        break;
      case 2:
         return  Evolucion(evoluciones: _evoluciones,);
        break;
      case 3:
         return Recipes(recipes: _recipe,);
        break;
      case 4:
           return  Presupuesto(presupuestos: _presupuestos,);
        break;
        case 4:
           return  Seguimiento();
        break;
      default:
    }

  }
 void cambiarVista(int index) {
   setState(() {
     _currentindex = index;
   });

 }
   void traerRecipes() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://10.0.2.2:3000/recipe/patientrecipe$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Recipe.fromJsonList(decodedData);
       print(decodedData);
        print(variable.items);
        print('Ya estoy en Pidiendo recipes');
        _recipe = variable.items;
    });
    }
   void traerPresupuestos() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://10.0.2.2:3000/presupuesto/patientpresupuesto$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Presupuests.fromJsonList(decodedData);
       print(decodedData);
        print(variable.items);
        print('Ya estoy en Pidiendo PRESUPUESTOS');
        _presupuestos = variable.items;
    });
    }
     void traerCosultas() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://10.0.2.2:3000/consulta/patient$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Consults.fromJsonList(decodedData);
       print(decodedData);
        print(variable.items);
        print('Ya estoy en Pidiendo Consultas');
        _consultas = variable.items;
    });
    }

     void traerEvolucion() async{
     int id;
     id = widget.pacient.id;
     String url = 'http://10.0.2.2:3000/evolution/patient$id'; 

   await http.get(url, headers: {
      'Accept': 'application/json'
    },
    ).then((response) {
       final decodedData = jsonDecode(response.body);
       final variable = new Evolucions.fromJsonList(decodedData);
       print(decodedData);
        print(variable.items);
        print('Ya estoy en Pidiendo Evolucion');
        _evoluciones = variable.items;
    });
    }
}