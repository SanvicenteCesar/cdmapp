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
    print(widget.presupuestos.length);
    return Container(

      
    );
  }
}