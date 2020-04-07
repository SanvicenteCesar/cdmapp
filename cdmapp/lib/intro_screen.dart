import 'package:cdmapp/login.dart';
import 'package:cdmapp/utils/flutkart.dart';
import 'package:flutter/material.dart';
import 'package:cdmapp/utils/my_navigator.dart';
import 'package:cdmapp/widgets/walkthrough.dart';

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 3) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEEEEEE),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          
          Expanded(
            flex: 30,
            child: PageView(
              children: <Widget>[
                Container(
                    width:MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height,      
                    child: Image.asset('assets/b1.png')),
                Container(
                    width:MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height,      
                    child: Image.asset('assets/b2.png')),
                Container(
                    width:MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height,      
                    child: Image.asset('assets/b3.png')),
                 Container(
                    width:MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height,      
                    child: Image.asset('assets/b4.png')),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text(lastPage ? "" : Flutkart.skip,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () =>
                      lastPage ? null :  Navigator.push(context, MaterialPageRoute(builder: (_) => Login())),
                ),
                FlatButton(
                  child: Text(lastPage ? Flutkart.gotIt : Flutkart.next,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ?Navigator.push(context, MaterialPageRoute(builder: (_) => Login()))
                      : controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
