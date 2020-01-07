// import 'package:flutter/material.dart';
// import 'package:rubber/rubber.dart';
// class DefaultPage extends StatefulWidget {
//   DefaultPage({Key key}) : super(key: key);
//   @override
//   _DefaultPageState createState() => _DefaultPageState();
// }
// class _DefaultPageState extends State<DefaultPage> with SingleTickerProviderStateMixin {
//   RubberAnimationController _controller;
//   @override
//   void initState() {
//     _controller = RubberAnimationController(
//         vsync: this,
//         halfBoundValue: AnimationControllerValue(percentage: 0.5),
//         lowerBoundValue: AnimationControllerValue(pixel: 200),
//         duration: Duration(milliseconds: 200)
//     );
//     _controller.addStatusListener(_statusListener);
//     _controller.animationState.addListener(_stateListener);
//     super.initState();
//   }
//   @override
//   void dispose() {
//     _controller.removeStatusListener(_statusListener);
//     _controller.animationState.removeListener(_stateListener);
//     super.dispose();
//   }
//   void _stateListener() {
//     print("state changed ${_controller.animationState.value}");
//   }
//   void _statusListener(AnimationStatus status) {
//     print("changed status ${_controller.status}");
//   }
//   void _expand() {
//     _controller.expand();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Weekly",style: TextStyle(color: Colors.cyan[900]),),
//       ),
//       body: RubberBottomSheet(
//           headerHeight: 60,
//            header: Container(
//             color: Colors.yellow,
//           ),
//           lowerLayer: _getLowerLayer(),
//           upperLayer: _getUpperLayer(),
//           animationController: _controller,
//         ),
//       // floatingActionButton: Column(
//       //   mainAxisSize: MainAxisSize.min,
//       //   children: <Widget>[
//       //     FloatingActionButton(
//       //       heroTag: "flt1",
//       //       onPressed: () {
//       //         _controller.setVisibility(!_controller.visibility.value);
//       //       },
//       //       backgroundColor: Colors.cyan[900],
//       //       foregroundColor: Colors.cyan[400],
//       //       child: Icon(Icons.visibility),
//       //     ),
//       //     Container(
//       //       margin: EdgeInsets.only(top: 20.0),
//       //       child: FloatingActionButton(
//       //         heroTag: "flt2",
//       //         onPressed: _expand,
//       //         backgroundColor: Colors.cyan[900],
//       //         foregroundColor: Colors.cyan[400],
//       //         child: Icon(Icons.vertical_align_top),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
//   Widget _getLowerLayer() {
//   return
//   //  Container(
//   //    child:
//      Column(
//        children: <Widget>[
//       Text("data"),
//       Text("yuiy"),
//       Text("dathgh"),
//       Text("data"),
//       Text("yuiy"),
//       Text("dathgh"),
//       Text("data"),
//       Text("yuiy"),
//       Text("dathgh"),
//       Text("data"),
//       Text("yuiy"),
//       Text("dathgh"),
//       Text("data"),
//       Text("yuiy"),
//       Text("dathgh"),
//       Text("data"),
//       Text("yuiy"),
//       Text("dathgh"),
//    ]
//   //  )
//    );
//   }
//   Widget _getUpperLayer() {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.cyan,
//              borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(50),
//                     topRight: Radius.circular(50),
//                   ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:rubber/rubber.dart';

class Weekly extends StatefulWidget {
  Weekly({Key key}) : super(key: key);
  @override
  _WeeklyState createState() => _WeeklyState();
}

class _WeeklyState extends State<Weekly>
    with SingleTickerProviderStateMixin {
  RubberAnimationController _controller;
  ScrollController _scrollController = ScrollController();
  List<bool> score = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> score_ans = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> choices = [
    '🍏',
    '🍋',
    '🍅',
    '🍇',
    '🥥',
    '🥕',
    '😊',
    '🥙',
    '🍇',
    '🥥',
    '🥕',
    '😊',
    '🥙',
    '🍇',
    '🥥',
    '🥕',
    '😊',
    '🥙',
    '🍇',
    '🥥',
    '🥕',
    '😊',
    '🥙',
    '🍇',
    '🥥',
  ];

  List<String> answer = [
    
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',

  ];
  List<MaterialColor> colors = [
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.purple,
    Colors.brown,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.purple,
  ];
  @override
  void initState() {
    _controller = RubberAnimationController(
      vsync: this,
      halfBoundValue: AnimationControllerValue(percentage: 0.5),
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text(
          "Weekly",
          style: TextStyle(color: Colors.cyan[900]),
        ),
      ),


      body: RubberBottomSheet(
        scrollController: _scrollController,
        lowerLayer: _listView(context),
       
        header: Container(
          // color: Colors.yellow,
          child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                child: Text(
                  "Questions",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                onTap: () {
                  _controller.expand();
                },
              )),
          decoration: BoxDecoration(
            color: Colors.indigo[900],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
          ),
        ),
        headerHeight: 70,
        // upperLayer: _listView(),
        upperLayer: _getUpperLayer(),
        animationController: _controller,
      ),
    );
  }

  Widget _getLowerLayer() {
    return Column(
      children: <Widget>[
        new Expanded(
      child:  GridView.count(
          crossAxisCount: 5,
          padding: EdgeInsets.all(35),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          children: List.generate(choices.length, (index) {
            return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        return Container(
          color: (score[index] == true)
              ? Colors.green[700]
              : Colors.grey,
          child:
              (score[index] == true) ? Text(choices[index]) : Text(""),
          alignment: Alignment.center,
          height: 50,
          width: 50,
        );
      },
      onWillAccept: (data) {
        return (!score[index] ||  !score_ans[index]);
      },
      onAccept: (data) {
        print(data);
        setState(() {
          score[index] = true;
          answer[index] = data;
        });
      },
      onLeave: (data) {},
    );

          }),
        )

        ),


          new Expanded(

      child: GridView.count(
          crossAxisCount: 7,
          padding: EdgeInsets.all(25),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(answer.length, (index) {
            return Draggable<String>(
              data: choices[index],
              child: Word(
                emoji: score_ans[index] == true ? " " : choices[index],
                color: Colors.indigo,
              ),
              feedback: Word(
                emoji: choices[index],
                color: Colors.indigo,
              ),
              childWhenDragging: Word(
                emoji: "",
                color: Colors.yellow,
              ),
              onDragCompleted: () {
                setState(() {
                  score_ans[index] = true;
                });
              },
            );
          }),
        )

        )

      ],
    );
  }


  Widget _listView(context){

    return 


ListView(
  children: <Widget>[

// new Expanded(
//    child:
// new GridView.builder(
//     itemCount: 4,
//     gridDelegate:
//       new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//     itemBuilder: (BuildContext context, int index) {
//       return Text("q");
//     })

// ),


// ListView.builder(
//   itemCount: 6,
//   itemBuilder: (BuildContext context, i) {
//     return ListTile(
//           title: Text(i.toString()),
//         );
//    },
// ),

Text("data"),
Text("data"),
Text("data"),
Text("data"),



  ],
);


  }

  Widget _getUpperLayer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[900],
      ),
      // padding: EdgeInsets.only(top:30),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Text("$index) This is the Question",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Divider(
                  color: Colors.white24,
                )
              ],
            );
            // ListTile(title: Text("Item $index"));
          },
          itemCount: 50),
    );
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        return Container(
          color: (score[answer.indexOf(emoji)] == true)
              ? Colors.green[700]
              : Colors.grey,
          child:
              (score[answer.indexOf(emoji)] == true) ? Text(emoji) : Text(""),
          alignment: Alignment.center,
          height: 50,
          width: 50,
        );
      },
      onWillAccept: (data) {
        return !score[answer.indexOf(emoji)];
      },
      onAccept: (data) {
        print(data);
        setState(() {
          score[answer.indexOf(emoji)] = true;
          answer[answer.indexOf(emoji)] = data;
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji, this.color}) : super(key: key);
  final String emoji;
  final MaterialColor color;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
    );
  }
}

class Word extends StatelessWidget {
  Word({Key key, this.emoji, this.color}) : super(key: key);
  final String emoji;
  final MaterialColor color;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal,
      child: Container(
        alignment: Alignment.center,
        height: 20,
        padding: EdgeInsets.all(5),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
    );
  }
}
