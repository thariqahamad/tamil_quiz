// import 'package:flutter/material.dart';
// import 'package:onboarding_anim/onboarding_anim.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:tamil_quiz/login.dart';

// class Onborad extends StatefulWidget {
//   @override
//   _OnboradState createState() => _OnboradState();
// }

// class _OnboradState extends State<Onborad> {
 
 
//   List<PageModel> pages = <PageModel>[
//     PageModel(
//       title: "Welcome",
//       body:
//           "Hi, Welcome to Tamil_quiz App",
//       image: Image(
//           image: AssetImage(
//               "images/welcome.png")),
//     ),
//     PageModel(
//         title: "Play the Game",
//         body:
//             "Play the Tamil games and puzzles",
//         image: Image(
//             image: AssetImage(
//               "images/puzzle.png"))),
//     PageModel(
//         title: "Win Rewards",
//         body:
//             "Win the exciting gifts and cash rewards",
//         image: Image(
//             image: AssetImage(
//               "images/reward.png"))),


//   ];

//   @override
//   void initState() {
//     super.initState();
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body:
        
//          OnBoardingScreen(
//             onboardingDecoration: OnboardingDecoration(
//                 aling: Alignment.topCenter,
//                 child: Image(
//                   image:AssetImage("images/onboard_top.png"),
//                   width: MediaQuery.of(context).size.width,
//                 )),
//             pages: pages,
//             showSkipButton: false,
//             animationDuration: 100,
//             onDone: () => Navigator.push(context, PageTransition(type: PageTransitionType.scale,  duration: Duration(seconds: 1), alignment: Alignment.center, child: Login()))
// ,
//             indicatorDecoration: IndicatorDecoration(
//                 active: Colors.deepOrange, inactive: Colors.deepOrange[200]))
                
                
                
                
                
//                 );
//   }


// }