
import 'dart:convert';

import 'package:cdmapp/class/pacienteclass.dart';
import 'package:cdmapp/class/recipeclass.dart';
import 'package:cdmapp/home.dart';
import 'package:cdmapp/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RecuperarPass extends StatefulWidget {
  RecuperarPass({Key key}) : super(key: key);
 
  @override
  _RecuperarPassState createState() => _RecuperarPassState();
}

class _RecuperarPassState extends State<RecuperarPass> {
 bool _isHidden = true;
 Paciente paciente = new Paciente();
 List<Recip> recipe = new List<Recip>();
TextEditingController _controlleremail = new TextEditingController();
  TextEditingController _controllerpassword = new TextEditingController();
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             
              Container(
                height: 200,
                  width: 300,
                    child: Stack(children: <Widget>[
                     
                    ]),
              ),
              Container(
                //color: Colors.red,
                //height: screenHeight,
                //width: screenWidth,
                padding: EdgeInsets.only(
                    top: 0.0, right: 20.0, left: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Consultorio Dental Merida',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 25.0,
                        
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pacifico"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    buildTextField("Correo", 30, _controlleremail),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    buildButtonContainer(context),
                    SizedBox(
                      height: 10.0,
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hintText , int largo, TextEditingController controlador) {
    return TextField(
      maxLength: largo,
      controller: controlador,
      decoration: InputDecoration(
        fillColor: Colors.deepPurpleAccent,
        focusColor: Colors.deepPurpleAccent,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          
        ),
        prefixIcon: hintText == "Correo" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 56.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.0),
          gradient: LinearGradient(
              colors: [Colors.deepPurple,Colors.deepPurpleAccent],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
        ),
        child: Center(
          child: Text(
            "Recuperar Contraseña",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      onTap: () {
         _RecuperarPassdata(context);
      },
    );
  }
   void _RecuperarPassdata(BuildContext context) async {
    String url = "http://10.0.2.2:3000/patient/pass";

    http.post(url, headers: {
      'Accept': 'application/json'
    }, body: {
      "mail": _controlleremail.text,
    }).then((response) {
      if (response.contentLength > 1 ) {
       final decodedData = jsonDecode(response.body);
       final variable = new Paciente.mapeado(decodedData);
       _controlleremail.clear();
        _controllerpassword.clear();
        print("------------------");
       print(variable.name);
       print(variable.id);
      // traerRecipes(variable.id);
       Navigator.pop(context);
       Navigator.push(context, MaterialPageRoute(builder: (_) =>Login()));
       } else {
       showDialog(
          context: context,
          builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Usuario o contraseña Incorrecta"),
            content: Text("Verifique con su odontologo si posee cuenta registrada"),
            actions: [
              FlatButton(
                child: Text("Aceptar"),
                onPressed: () {
                  Navigator.pop(context);
                 },
              ),
            ],
            );
    },
  );
       }
    
      
       

    });
    
  }
 
}
