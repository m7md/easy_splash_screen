import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_learn_splash_sc/home_page.dart';

void main() => runApp(MaterialApp(
  theme:
  ThemeData(primaryColor: Colors.red, accentColor: Colors.yellow),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 4),
    (){
      Navigator.push(context,
          MaterialPageRoute(
              builder:
                  (context) => HomePage()
          ),
      // ignore: unnecessary_statements
      );
    },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.green),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50.0,
                          child: Icon(
                            Icons.shopping_cart,
                            size: 60.0,
                            color: Colors.green.shade700,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text("Jannah Store",
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        //backgroundColor: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Text("easy online shopping",
                        style: TextStyle(
                            color: Colors.white,
                        fontSize: 20.0),)
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
