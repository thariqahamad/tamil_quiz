
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  // To adjust the layout according to the screen size
  // so that our layout remains responsive ,we need to
  // calculate the screen height
  double screenHeight;
  // Set intial mode to login
  // AuthMode _authMode = AuthMode.LOGIN;


  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(image: new DecorationImage(image: new AssetImage("images/p2.jpg"), fit: BoxFit.fill)),
          ),
      
      
       SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            lowerHalf(context),
            upperHalf(context),
            loginCard(context),
          ],
        ),
      ),
        ]
      )


    );
  }

  Widget loginCard(BuildContext context) {
    
    
    return
    
    //  Column(
    //   children: <Widget>[


        Container(
          margin: EdgeInsets.only(top: screenHeight / 4),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
               
                  
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 28,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),



                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Your Email", hasFloatingPlaceholder: true),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password", hasFloatingPlaceholder: true),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                    FlatButton(
                        child: Text("Login"),
                        color: Color(0xFF4B9DFE),
                        textColor: Colors.white,
                        padding: EdgeInsets.only(
                            left: 38, right: 38, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {},
                      ),


                 

                ],
              ),
            ),
          ),

      //   ),
      // ],

    );

  }



Widget upperHalf(BuildContext context) {
    return Container(
      height: screenHeight/4,
      child: Image.asset(
        'images/flutter.png',
        fit: BoxFit.cover,
      ),
    );
  }



  Widget lowerHalf(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenHeight / 2,
        color: Color(0xFFECF0F3),
      ),
    );
  }
}