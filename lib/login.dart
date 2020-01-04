import 'package:animated_widgets/animated_widgets.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:loading_button/loading_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:tamil_quiz/dashboard.dart';

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

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool _autoValidate = false;
  String  name;
  String  email;
  String  referal;
  String  mobile ='';
  String  otp ="";
  String  button = "Get OTP";
  bool _validate;
  bool hideMobile = true;
  bool hideBtn = false;
  bool showOpt = false;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      
      body:  Center(
              child: SingleChildScrollView(
               padding: EdgeInsets.only(left: 15, right: 15),
            child:
            ScaleAnimatedWidget.tween(
      enabled: true,
      duration: Duration(milliseconds: 500),
      scaleDisabled: 0.2,
      scaleEnabled: 1,
      child:  loginCard(context),
    ),
          ))
      
      
      
      
      
    //   new Container(
    //       decoration: new BoxDecoration(
    //         // gradient: LinearGradient(
    //         //   begin: Alignment.topRight,
    //         //   end: Alignment.bottomLeft,
    //         //   stops: [0.1, 0.5, 0.7, 0.9],
    //         //   colors: [
    //         //     Colors.indigo[800],
    //         //     Colors.indigo[700],
    //         //     Colors.blue[600],
    //         //     Colors.blue[400],
    //         //   ],
    //         // ),
    //         color: Colors.black
    //       ),
    //       child: Center(
    //           child: SingleChildScrollView(
    //         child:
    //         ScaleAnimatedWidget.tween(
    //   enabled: true,
    //   duration: Duration(milliseconds: 500),
    //   scaleDisabled: 0.2,
    //   scaleEnabled: 1,
    //   child:  loginCard(context),
    // ),
         
    //       ))

    //       ),




      // Stack(
      //   children: <Widget>[
      //   ]
      // )
    );
  }

  Widget loginCard(BuildContext context) {
    return

        //  Column(
        //   children: <Widget>[

        // Container(
      // margin: EdgeInsets.only(top: screenHeight / 4),
      // padding: EdgeInsets.only(left: 15, right: 15),
      // color: Colors.black54,

      // child:

       Card(
        // color: Colors.white12,

        elevation: 22,


        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.pink[900], width: 2),
        ),

        // elevation: 33,
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

              Image.asset(
                'images/flutter.png',
                width: 121,
                height: 121,
              ),




















hideMobile? Column(children: <Widget>[
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CountryListPick(
                    isShowFlag: true,
                    isShowTitle: false,
                    // to show or hide down icon
                    isDownIcon: true,
                    // to initial code number countrey
                    initialSelection: '+91',
                    // to get feedback data from picker
                    onChanged: (CountryCode code) {
                      // name of country
                      print(code.name);
                      // code of country
                      print(code.code);
                      // code phone of country
                      print(code.dialCode);
                      // path flag of country
                      print(code.flagUri);
                    },
                  ),
                  new Flexible(
                    child: new TextField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      enabled: !(button=="Submit OTP"),
                      onChanged: (val){
                        setState(() {
                          mobile = val;
                          if(this.mobile.length >= 10){
                            this.hideBtn = true;
                          }
                          else{
                            this.hideBtn = false;

                          }
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: "Mobile Number",
                        //  border: InputBorder.none,6
                        
                        // prefixIcon: Icon(Icons.smartphone, color: Colors.grey),
                      ),
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
              ),


      

   showOpt? TranslationAnimatedWidget.tween(
    enabled: true,
    translationDisabled: Offset(400, 0),
    translationEnabled: Offset(0, 0),
              child:
Column(children: <Widget>[
          SizedBox(
                        height: 30,
                      ),

              PinInputTextField(
                pinLength: 4,
                // decoration: _pinDecoration,
                // controller: _pinEditingController,
                // autoFocus: true,
                textInputAction: TextInputAction.go,
                onChanged: (val){
                  otp = val;
                  setState(() {
                    if(otp.length >= 4){
                    this.hideBtn = true;
                  }
                  else{
                    this.hideBtn = false;
                  }
                  });
                  
                },
               
              ),


Align(alignment: Alignment.centerRight,
child:         FlatButton(
                child: Text("Resent",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.indigo)
                ),
                onPressed: () {

setState(() {
  
});

                },
              ),

),
        

              SizedBox(
                height: 1,
              ),

],),):  SizedBox(
                height: 2,
              ),
]
): SizedBox(
                height: 2,
              ),


















            !hideMobile? TranslationAnimatedWidget.tween(
    enabled: true,
    translationDisabled: Offset(0, 500),
    translationEnabled: Offset(0, 0),
              child:  new Form(
              key: _key,
              autovalidate: _autoValidate,
              child: FormUI(),
            )): SizedBox(
                height: 2,
              ),

//               FlatButton(
//                 child: Text("Login"),
//                 color: Colors.pink[600],
//                 textColor: Colors.white,
//                 padding:
//                     EdgeInsets.only(left: 38, right: 38, top: 15, bottom: 15),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(50)),
//                 onPressed: () {

// setState(() {
//   showOpt = true;
// });

//                 },
//               ),

  SizedBox(
                height: 30,
              ),


//               LoadingButton(
//   // onPressed()=>{},
//   onPressed: ()=>{
//     setState(() {
//   showOpt = true;
//   button  = "Submit OTP";
// })
// },
//   isLoading: false,
//   child: Text(
//     this.button,
//     style: TextStyle(color: Colors.white),
//   ),
// ),


 RaisedButton(
        shape: RoundedRectangleBorder(
           borderRadius: new BorderRadius.circular(10.0),
          //  side: BorderSide(color: Colors.red)
),

       onPressed:(this.hideBtn ) ? ()=>{



if(this.button == 'Get OTP'){


    setState(() {
      hideBtn = false;
      
      showOpt = true;
  button  = "Submit OTP";

})
  

}

else if(this.button == 'Submit OTP'){
 setState(() {
    // hideBtn = true;
 hideMobile = false;
  button  = "Register";

 })
}


else if(this.button == 'Register'){


 if (this._key.currentState.validate()) {
      _key.currentState.save(),
      print(name),
      print(email),
      print(referal),

      Navigator.push(context, PageTransition(type: PageTransitionType.scale,  duration: Duration(seconds: 1), alignment: Alignment.center, child: Dashboard()))
    
 }

}



}:null,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(button),
      ),



            ],
          ),
        ),
      );

      //   ),
      // ],
    // );


  }

//   String validateMobile(String value) {
// // Indian Mobile number are of 10 digit only
//     if (value.length != 10)
//       return 'Mobile Number must be of 10 digit';
//     else
//       return null;
//   }

  Widget upperHalf(BuildContext context) {
    return Container(
      height: screenHeight / 4,
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

 Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Full Name'),
          // maxLength: 32,
          validator: validateName,
          onSaved: (String val) {
            name = val;
          },
        ),SizedBox(
                height: 10,
              ),
        
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Email ID'),
            keyboardType: TextInputType.emailAddress,
            // maxLength: 32,
            validator: validateEmail,
            onSaved: (String val) {
              email = val;
            }),
SizedBox(
                height: 10,
              ),
            new TextFormField(
            decoration: new InputDecoration(hintText: 'Referal (If Have)', ),
            keyboardType: TextInputType.phone,
            // maxLength: 10,
            validator: validateMobile,
            onSaved: (String val) {
              referal = val;
            }),

      ],
    );
  }

  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  String validateMobile(String value) {
    // String patttern = r'(^[0-9a-zA-Z ]*$)';
    // RegExp regExp = new RegExp(patttern);
    // if (value.length == 0) {
    //   return "Mobile is Required";
    // } else if(value.length != 10){
    //   return "Mobile number must 10 digits";
    // }else if (!regExp.hasMatch(value)) {
    //   return "Mobile Number must be digits";
    // }
    return null;
  }

  String validateEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }else {
      return null;
    }
  }

  // _sendToServer() {
  //   if (_key.currentState.validate()) {
  //     // No any error in validation
  //     _key.currentState.save();
  //     print("Name $name");
  //     print("Mobile $mobile");
  //     print("Email $email");
  //   } else {
  //     // validation error
  //     setState(() {
  //       _validate = true;
  //     });
  //   }
  // }


}
































   