import 'package:cdmapp/home.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
 bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                    buildTextField("Correo"),
                    SizedBox(
                      height: 20.0,
                    ),
                    buildTextField("Password"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Olvidaste tu contraseña?",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    buildButtonContainer(),
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

  Widget buildTextField(String hintText) {
    return TextField(
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

  Widget buildButtonContainer() {
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
            "Iniciar Sesión",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
      },
    );
  }
}
