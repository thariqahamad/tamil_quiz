import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';




class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter custom clipper example"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Center(child: Text("OvalBottomBorderClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: OvalRightBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.red,
              child: Center(child: Text("OvalRightBorderClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: SideCutClipper(),
            child: Container(
              height: 200,
              color: Colors.pink,
              //play with scals to get more clear versions
              child: Center(child: Text("SideCutClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: OvalLeftBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.green,
              child: Center(child: Text("OvalLeftBorderClipper()")),
            ),
          ),
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: ArcClipper(),
            child: Container(
              height: 100,
              color: Colors.pink,
              child: Center(child: Text("ArcClipper()")),
            ),
          ),
          ClipPath(
            clipper: PointsClipper(),
            child: Container(
              height: 100,
              color: Colors.indigo,
              child: Center(child: Text("PointsClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: TriangleClipper(),
            child: Container(
              height: 100,
              color: Colors.deepOrange,
              child: Center(child: Text("TriangleClipper()")),
            ),
          ),
          ClipPath(
            clipper: MovieTicketClipper(),
            child: Container(
              height: 100,
              color: Colors.deepPurple,
              child: Center(child: Text("MovieTicketClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Container(
              height: 100,
              color: Colors.green,
              child: Center(child: Text("MovieTicketBothSidesClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: MultipleRoundedCurveClipper(),
            child: Container(
              height: 100,
              color: Colors.pink,
              child: Center(child: Text("MultipleRoundedCurveClipper()")),
            ),
          ),
          SizedBox(height: 20.0),
          ClipPath(
            clipper: MultiplePointedEdgeClipper(),
            child: Container(
              height: 100,
              color: Colors.green,
              child: Center(child: Text("MultiplePointedEdgeClipper()")),
            ),
          ),
          SizedBox(height: 20.0),
          ClipPath(
            clipper: OctagonalClipper(),
            child: Container(
              height: 220,
              color: Colors.red,
              child: Center(child: Text("OctagonalClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: HexagonalClipper(),
            child: Container(
              height: 220,
              color: Colors.blueAccent,
              child: Center(child: Text("HexagonalClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: HexagonalClipper(reverse: true),
            child: Container(
              height: 220,
              color: Colors.orangeAccent,
              child: Center(child: Text("HexagonalClipper(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              height: 220,
              color: Colors.pinkAccent,
              child: Center(child: Text("ParallelogramClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(
              height: 120,
              color: Colors.red,
              child: Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: DiagonalPathClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.pink,
              child: Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: Center(child: Text("WaveClipperOne()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: Center(child: Text("WaveClipperOne(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: Center(child: Text("WaveClipperTwo()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: Center(child: Text("WaveClipperTwo(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.orange,
              ),
              child: Center(child: Text("RoundedDiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0),
          ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Container(
              height: 120,
              color: Colors.yellow,
              child: Center(child: Text("OvalTopBorderClipper()")),
            ),
          ),
          SizedBox(height: 10),
          ClipPath(
            clipper: ArrowClipper(70, 80, Edge.LEFT),
            child: Container(
              height: 120,
              color: Colors.pink,
              child: Center(child: Text("ArrowClipper()")),
            ),
          ),
          SizedBox(height: 10),
          ClipPath(
            clipper: ArrowClipper(70, 80, Edge.RIGHT),
            child: Container(
              height: 120,
              color: Colors.red,
              child: Center(child: Text("ArrowClipper()")),
            ),
          ),
          SizedBox(height: 10),
          ClipPath(
            clipper: ArrowClipper(20, 300, Edge.TOP),
            child: Container(
              height: 70,
              width: 50,
              color: Colors.blue,
              child: Center(child: Text("ArrowClipper()")),
            ),
          ),
          SizedBox(height: 10),
          ClipPath(
            clipper: ArrowClipper(70, 80, Edge.BOTTOM),
            child: Container(
              height: 120,
              color: Colors.green,
              child: Center(child: Text("ArrowClipper()")),
            ),
          ),
          SizedBox(height: 10),
          ClipPath(
            clipper: StarClipper(8),
            child: Container(
              height: 450,
              color: Colors.indigo,
              child: Center(child: Text("StarClipper()")),
            ),
          ),
          ClipPath(
            clipper: MessageClipper(borderRadius: 16),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                color: Colors.red,
              ),
              child: Center(child: Text("MessageClipper()")),
            ),
          ),
        ],
      ),
    );
  }
}







































// import 'package:flutter/material.dart';
// // import 'category.dart';
// // import 'question.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// // import 'quiz_finished.dart';

// class Login extends StatefulWidget {
//   // static final String path = "lib/src/pages/quiz_app/quiz_page.dart";
//   final List<Question> questions;
//   final Category category;

//   const Login({Key key, @required this.questions, this.category}) : super(key: key);

//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final TextStyle _questionStyle = TextStyle(
//     fontSize: 18.0,
//     fontWeight: FontWeight.w500,
//     color: Colors.white
//   );

//   int _currentIndex = 0;
//   final Map<int,dynamic> _answers = {};
//   final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();


//   @override
//   Widget build(BuildContext context){
//     Question question = widget.questions[_currentIndex];
//     final List<dynamic> options = question.incorrectAnswers;
//     if(!options.contains(question.correctAnswer)) {
//       options.add(question.correctAnswer);
//       options.shuffle();
//     }
    
//     return WillPopScope(
//       onWillPop: _onWillPop,
//       child: Scaffold(
//         key: _key,
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple,
//           title: Text(widget.category.name),
//           elevation: 0,
//         ),
//         body: Stack(
//           children: <Widget>[
//             ClipPath(
//               clipper: WaveClipperTwo(),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.deepPurple,
//                 ),
//                 height: 200,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       CircleAvatar(
//                         backgroundColor: Colors.white70,
//                         child: Text("${_currentIndex+1}"),
//                       ),
//                       SizedBox(width: 16.0),
//                       Expanded(
//                         child: Text(widget.questions[_currentIndex].question,
//                           softWrap: true,
//                           style: _questionStyle,),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: 20.0),
//                   Card(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         ...options.map((option)=>RadioListTile(
//                           title: Text("$option"),
//                           groupValue: _answers[_currentIndex],
//                           value: option,
//                           onChanged: (value){
//                             setState(() {
//                               _answers[_currentIndex] = option;
//                             });
//                           },
//                         )),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       alignment: Alignment.bottomCenter,
//                       child: RaisedButton(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0)
//                         ),
//                         color: Theme.of(context).primaryColor,
//                         textColor: Colors.white,
//                         child: Text( _currentIndex == (widget.questions.length - 1) ? "Submit" : "Next"),
//                         onPressed: _nextSubmit,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void _nextSubmit() {
//     if(_answers[_currentIndex] == null) {
//       _key.currentState.showSnackBar(SnackBar(
//         content: Text("You must select an answer to continue."),
//       ));
//       return;
//     }
//     if(_currentIndex < (widget.questions.length - 1)){
//       setState(() {
//           _currentIndex++;
//       });
//     } else {
//       Navigator.of(context).pushReplacement(MaterialPageRoute(
//         // builder: (_) => print("object")
//         // builder: (_) => QuizFinishedPage(questions: widget.questions, answers: _answers)
//       ));
//     }
//   }

//   Future<bool> _onWillPop() async {
//     return showDialog<bool>(
//       context: context,
//       builder: (_) {
//         return AlertDialog(
//           content: Text("Are you sure you want to quit the quiz? All your progress will be lost."),
//           title: Text("Warning!"),
//           actions: <Widget>[
//             FlatButton(
//               child: Text("Yes"),
//               onPressed: (){
//                 Navigator.pop(context,true);
//               },
//             ),
//             FlatButton(
//               child: Text("No"),
//               onPressed: (){
//                 Navigator.pop(context,false);
//               },
//             ),
//           ],
//         );
//       }
//     );
//   }
// }




// class Category{
//   final int id;
//   final String name;
//   final dynamic icon;
//   Category(this.id, this.name, {this.icon});

// }



// enum Type {
//   multiple,
//   boolean
// }

// enum Difficulty {
//   easy,
//   medium,
//   hard
// }

// class Question {
//   final String categoryName;
//   final Type type;
//   final Difficulty difficulty;
//   final String question;
//   final String correctAnswer;
//   final List<dynamic> incorrectAnswers;

//   Question({this.categoryName, this.type, this.difficulty, this.question, this.correctAnswer, this.incorrectAnswers});

//   Question.fromMap(Map<String, dynamic> data):
//     categoryName = data["category"],
//     type = data["type"] == "multiple" ? Type.multiple : Type.boolean,
//     difficulty = data["difficulty"] == "easy" ? Difficulty.easy : data["difficulty"] == "medium" ? Difficulty.medium : Difficulty.hard,
//     question = data["question"],
//     correctAnswer = data["correct_answer"],
//     incorrectAnswers = data["incorrect_answers"];

//   static List<Question> fromData(List<Map<String,dynamic>> data){
//     return data.map((question) => Question.fromMap(question)).toList();
//   }

// } 