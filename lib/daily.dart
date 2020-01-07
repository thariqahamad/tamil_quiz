import 'package:animated_background/animated_background.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// import 'package:flutter_multi_carousel/carousel.dart';

class Daily extends StatefulWidget {
  // Daily({Key key}) : super(key: key);
  createState() => DailyState();
}

class DailyState extends State<Daily> with TickerProviderStateMixin {

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

  List<String> question = [
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
        body:
        AnimatedBackground(
  behaviour: RandomParticleBehaviour(
    options: ParticleOptions(baseColor: Colors.green,

    spawnOpacity: 0.1,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 10.0,
    spawnMaxSpeed: 40.0,
    spawnMinRadius: 3.0,
    spawnMaxRadius: 10.0,
    particleCount: 30,)
  ),

  vsync: this,
  child: 


CarouselSlider(
  height: 400.0,

  items: [1,2,3,4,5].map((i) {
    return Align(
          child:
           Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                "1) This is the question This is the question This is the question This is the question",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      answer.map((emoji) => _buildDragTarget(emoji)).toList()),
              SizedBox(
                height: 22,
              ),
 new Expanded(
      child:
    GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 4,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(question.length, (index) {
            return 
 Draggable<String>(
                              data: question[index],
                              child: Emoji(
                                  emoji:score_ans[index] == true ? " " : question[index],color: Colors.indigo,),
                              feedback: Emoji(emoji: question[index],color: Colors.indigo,),
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
// //                               data: question[index],
// //                               child: Emoji(
// //                                   emoji:
// //                                       score_ans[index] == true ? " " : question[index]),
// //                               feedback: Emoji(emoji: question[index]),
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
        );
  }).toList(),
)













  
)
        
        
        
        
        
        

        
        
        
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
        return (!score[answer.indexOf(emoji)] ||  !score_ans[answer.indexOf(emoji)]);
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
