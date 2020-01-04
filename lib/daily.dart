import 'package:flutter/material.dart';
import 'dart:math';

class Daily extends StatefulWidget {
  // Daily({Key key}) : super(key: key);
  createState() => DailyState();
}

class DailyState extends State<Daily> {


//   final Map<String, bool> score = {};
//   /// Choices for game
//   final Map choices = {
//     '🍏': Colors.green,
//     '🍋': Colors.yellow,
//     '🍅': Colors.red,
//     '🍇': Colors.purple,
//     '🥥': Colors.brown,
//     '🥕': Colors.orange
//   };
//   // Random seed to shuffle order of items.
//   int seed = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text('Score ${score.length} / 6'),
//           backgroundColor: Colors.pink),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.refresh),
//         onPressed: () {
//           setState(() {
//             score.clear();
//             seed++;
//           });
//         },
//       ),
//       body:
//        Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: choices.keys.map((emoji) {
//                 return Draggable<String>(
//                   data: emoji,
//                   child: Emoji(emoji: score[emoji] == true ? "" : emoji),
//                   feedback: Emoji(emoji: emoji),
//                   childWhenDragging: Emoji(emoji: ""),
//                 );
//               }).toList()),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children:
//                 choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
//                   ..shuffle(Random(seed)),
//           )
//         ],
//       ),
//     );
//   }
//   Widget _buildDragTarget(emoji) {
//     return DragTarget<String>(
//       builder: (BuildContext context, List<String> incoming, List rejected) {
//       if (score[emoji] == true) {
//           return Container(
//             color: Colors.white,
//             child: Text(emoji),
//             alignment: Alignment.center,
//             height: 80,
//             width: 80,
//           );
//         } else {
//           return Container(color: choices[emoji], height: 80, width: 80);
//         }
//       },
//       // onWillAccept: (data) => data == emoji,
//       onAccept: (data) {
//         print(data);
//         setState(() {
//           score[data] = true;
//         });
//       },
//       onLeave: (data) {},
//     );
//   }
// }
// class Emoji extends StatelessWidget {
//   Emoji({Key key, this.emoji}) : super(key: key);
//   final String emoji;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         alignment: Alignment.center,
//         height: 50,
//         padding: EdgeInsets.all(10),
//         child: Text(
//           emoji,
//           style: TextStyle(color: Colors.black, fontSize: 22),
//         ),
//       ),
//     );
//   }
// }


  List<bool> score = [
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
  ];

  List<String> answer = [
   'a',
                'b',
                'c',
                'd',
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
  int seed = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            title: Text('Score ${score.length} / 6'),
            backgroundColor: Colors.pink),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              score = [
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
              ];
              score_ans = [
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
              ];
              answer = [
                'a',
                'b',
                'c',
                'd',
              ];
              seed++;
            });
          },
        ),
        body: Align(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "1. This is the question This is the question This is the question This is the question",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      answer.map((emoji) => _buildDragTarget(emoji)).toList()),
              SizedBox(
                height: 40,
              ),
 new Expanded(
      child:
      
    

    GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 4,
          padding: EdgeInsets.all(50),
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(choices.length, (index) {
            return 
 Draggable<String>(
                              data: choices[index],
                              child: Emoji(
                                  emoji:score_ans[index] == true ? " " : choices[index],color: Colors.indigo,),
                              feedback: Emoji(emoji: choices[index],color: Colors.indigo,),
                              childWhenDragging: Emoji(emoji: "",color: Colors.yellow,),
                              onDragCompleted: () {
                                setState(() {
                                  score_ans[index] = true;
                                });
                              },
                            );

          }),
        ),


    ),

    


// GridView.count(
//           // Create a grid with 2 columns. If you change the scrollDirection to
//           // horizontal, this produces 2 rows.
//           crossAxisCount: 2,
//           // Generate 100 widgets that display their index in the List.
//           children: List.generate(6, (index) {
//             return Text(
//                 'Item $index',
//                 style: Theme.of(context).textTheme.headline,
//             );

// //  Draggable<String>(
// //                               data: choices[index],
// //                               child: Emoji(
// //                                   emoji:
// //                                       score_ans[index] == true ? " " : choices[index]),
// //                               feedback: Emoji(emoji: choices[index]),
// //                               childWhenDragging: Emoji(emoji: ""),
// //                               onDragCompleted: () {
// //                                 setState(() {
// //                                   score_ans[index] = true;
// //                                 });
// //                               },
// //                             );

//           }),
//         ),
      



            ],
          ),
        ));
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
