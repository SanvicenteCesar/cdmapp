import 'package:cdmapp/class/recipeclass.dart';
import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {

  Recipes({this.recipes});

  final List<Recip> recipes;
  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       appBar: AppBar(
        title: Text('Recipes Personales'),
        leading: Container(
          child: Icon(Icons.receipt),
        ),
      ),
      body: ListView.builder(
            itemCount: widget.recipes.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.receipt),
                title: Text('Rp : '+ widget.recipes[index].rp,
                 style: TextStyle(
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   color: Colors.black87,
                   letterSpacing: 0.4
                 ),),
                subtitle: Text('Indicaciones: ' + widget.recipes[index].indicaciones + '  Fecha: ' + widget.recipes[index].firma),
                trailing: Icon(Icons.recent_actors ),
                        );
            },
          ),
    );
  }
}