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
    print(widget.recipes.length);
    return Container(
      
      
    );
  }
}