import 'package:cdmapp/vistasprincipales/consultas.dart';
import 'package:cdmapp/vistasprincipales/evolucion.dart';
import 'package:cdmapp/vistasprincipales/perfil.dart';
import 'package:cdmapp/vistasprincipales/presupuesto.dart';
import 'package:cdmapp/vistasprincipales/recipe.dart';
import 'package:cdmapp/vistasprincipales/seguimiento.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
   int _currentindex = 0;
   final List<Widget> _children = [
     Perfil(),
     Consultas(),
     Evolucion(),
     Recipes(),
     Presupuesto(),
     Seguimiento()
   ];
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Consultorio Dental Merida'),

      ),
      body: _children[_currentindex],
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
 void cambiarVista(int index) {
   setState(() {
     _currentindex = index;
   });

 }
}