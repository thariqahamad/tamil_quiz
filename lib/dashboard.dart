import 'dart:ui';

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamil_quiz/daily.dart';
import 'package:tamil_quiz/weekly.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  String i = '231';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // backgroundColor: Color(0xff6d04ff),
          backgroundColor: Colors.black,
          body: OpacityAnimatedWidget.tween(
            enabled: true,
            duration: Duration(seconds: 2),
            opacityDisabled: 0,
            opacityEnabled: 1,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Hey, Dinesh!",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.0, vertical: 5.0),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                color: Colors.indigo[400],
                              ),
                              child: Text("id: 43d54f",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(height: 11),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Total Credits  ",
                                style: TextStyle(color: Colors.cyan[50])),

                            // Column(
                            //   children: <Widget>[

                            //     Text(
                            //     "₹"+i+"  ",
                            //        style: TextStyle(fontSize: 40,color: Colors.amberAccent, fontWeight: FontWeight.bold,)
                            //     ),
                            //   ],
                            // ),

                            CustomAnimatedWidget(
                              enabled: true,
                              duration: Duration(seconds: 2),
                              curve: Curves.easeOut,
                              builder: (context, percent) {
                                //for custom animation, use builders
                                final int displayedDate =
                                    (247 * percent).floor();
                                return Text("$displayedDate  ",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.amberAccent,
                                      fontWeight: FontWeight.bold,
                                    ));
                              },
                            ),

                            // RaisedButton(
                            //   shape: RoundedRectangleBorder(
                            //       borderRadius: new BorderRadius.circular(10.0),
                            //       side: BorderSide(color: Colors.red)),
                            //   onPressed: () {},
                            //   color: Colors.pink[400],
                            //   textColor: Colors.white,
                            //   child: Text("Claim now".toUpperCase(),
                            //       style: TextStyle(fontSize: 10)),
                            // ),


                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[



SizedBox.fromSize(
  size: Size(77, 77), // button width and height
  child: ClipOval(
    child: Material(
      color: Colors.pink, // button color
      child: InkWell(
        splashColor: Colors.green, // splash color
        onTap: () {}, // button pressed
        child:
        
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("💰",style: TextStyle(color: Colors.white,fontSize: 22),),// icon
            SizedBox(height: 5,),
            Text("Withdraw",style: TextStyle(color: Colors.white),),  // text
          ],
        )
        
       
      ),
    ),
  ),
),




SizedBox.fromSize(
  size: Size(77, 77), // button width and height
  child: ClipOval(
    child: Material(
      color: Colors.indigo, // button color
      child: InkWell(
        splashColor: Colors.green, // splash color
        onTap: () {}, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("🏆",style: TextStyle(color: Colors.white,fontSize: 22),),// icon
            SizedBox(height: 3,),
            Text("Winners",style: TextStyle(color: Colors.white),), // text
          ],
        )
      ),
    ),
  ),
),

SizedBox.fromSize(
  size: Size(77, 77), // button width and height
  child: ClipOval(
    child: Material(
      color: Colors.green, // button color
      child: InkWell(
        splashColor: Colors.green, // splash color
        onTap: () {}, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Icon(
      Icons.share,size: 25,color: Colors.yellow,
           ),
            SizedBox(height: 3,),
            Text("Share",style: TextStyle(color: Colors.white),), // text
          ],
        )
      ),
    ),
  ),
),
                       
                       
                            // Container(
                            //     decoration: BoxDecoration(
                            //       // color: Colors.white,

                            //       gradient: LinearGradient(
                            //         begin: Alignment.topLeft,
                            //         end: Alignment(0.8,
                            //             0.2), // 10% of the width, so there are ten blinds.
                            //         colors: [
                            //           Colors.blue[500],
                            //           Colors.green[700],
                            //         ], // whitish to gray
                            //         // tileMode: TileMode.repeated, // repeats the gradient over the canvas
                            //       ),
                            //       border: Border.all(color: Colors.white),

                            //       borderRadius: BorderRadius.circular(10.0),
                            //       boxShadow: [
                            //         BoxShadow(
                            //           color: Colors.black45,
                            //           blurRadius: 3.0,
                            //           offset: Offset(0, 3),
                            //         ),
                            //       ],
                            //     ),
                            //     width: 70,
                            //     padding: EdgeInsets.all(8.0),
                            //     child: Column(
                            //       children: <Widget>[


                            //         FlatButton(
                            //             onPressed: () {},
                            //             padding: EdgeInsets.all(0.0),
                            //             child: Image.asset(
                            //               'images/trophy.png',
                            //             )),
                            //         Text(
                            //           "Winners",
                            //           style: TextStyle(
                            //             color: Colors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     )),
                          
                          
                          
                            // Container(
                            //     decoration: BoxDecoration(
                            //       gradient: LinearGradient(
                            //         begin: Alignment.topLeft,
                            //         end: Alignment(0.8, 0.2),
                            //         // 10% of the width, so there are ten blinds.
                            //         // colors: [Colors.yellow[500],Colors.red[700],], // whitish to gray
                            //         colors: [
                            //           Colors.blue[500],
                            //           Colors.green[700],
                            //         ], // whitish to gray

                            //         // tileMode: TileMode.repeated, // repeats the gradient over the canvas
                            //       ),
                            //       border: Border.all(color: Colors.white),
                            //       borderRadius: BorderRadius.circular(10.0),
                            //       boxShadow: [
                            //         BoxShadow(
                            //           color: Colors.black45,
                            //           blurRadius: 3.0,
                            //           offset: Offset(0, 3),
                            //         ),
                            //       ],
                            //     ),
                            //     width: 70,
                            //     padding: EdgeInsets.all(8.0),
                            //     child: Column(
                            //       children: <Widget>[
                            //         FlatButton(
                            //             onPressed: () {},
                            //             padding: EdgeInsets.all(0.0),
                            //             child: Image.asset(
                            //               'images/share.png',
                            //             )),
                            //         Text(
                            //           "Share",
                            //           style: TextStyle(
                            //             color: Colors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     )),
                                
                            // Container(
                            //     decoration: BoxDecoration(
                            //       gradient: LinearGradient(
                            //         begin: Alignment.topLeft,
                            //         end: Alignment(0.8, 0.2),
                            //         colors: [
                            //           Colors.blue[500],
                            //           Colors.green[700],
                            //         ],
                            //       ),
                            //       borderRadius: BorderRadius.circular(10.0),
                            //       border: Border.all(color: Colors.white),
                            //       boxShadow: [
                            //         BoxShadow(
                            //           color: Colors.black45,
                            //           blurRadius: 3.0,
                            //           offset: Offset(0, 3),
                            //         ),
                            //       ],
                            //     ),
                            //     width: 70,
                            //     padding: EdgeInsets.all(8.0),
                            //     child: Column(
                            //       children: <Widget>[
                            //         FlatButton(
                            //             onPressed: () {},
                            //             padding: EdgeInsets.all(0.0),
                            //             child: Image.asset(
                            //               'images/facebook.png',
                            //             )),
                            //         Text(
                            //           "Follow",
                            //           style: TextStyle(
                            //             color: Colors.white,
                            //           ),
                            //         ),
                            //       ],
                            //     )),



                          ]),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
               
               
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      //  border: Border.all(width: 2, color: Colors.black),

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.pink[50],
                    ),
                    child: 
                               
                    
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child:detail("Daily", Daily(), "15", "3700", "100")



                        ),



                        Expanded(
                          child: Container(
                            height: 10,
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                              color: Colors.green[50],
                            ),
                            child:detail("Weekly", Weekly(), "1", "1000", "100")
                          ),
                        ),




                      ],
                    ),
                 
                 
                 
                  ),
                )
              
              
              
              






              
              
              
              ],
            ),
          )),
    );
  }




  Widget detail(freq,goto,ques,reward,winners){

    return 

     Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                     freq,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    FlatButton(
                                      child: Text(
                                        "Play Now",
                                        style: TextStyle(
                                          color: Color(0xff6d04ff),
                                        ),
                                      ),
                                      onPressed: () {

      Navigator.push(context, PageTransition(type: PageTransitionType.scale,  duration: Duration(seconds: 1), alignment: Alignment.center, child: goto));


                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          ques,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.blue[900],
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Question",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          '₹$reward',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.blue[900],
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Reward",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          winners,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.blue[900],
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Winners",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                              ],
                            );

  }
}
