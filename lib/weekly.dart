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

  List<String> choices = [
    
    'அ',
    'த',
    'நி',
    'ரு',
    'தை',
    'கி',
    'மெ',
    'வா',
    'டு',
    'சி',
    'வே',
    'க்',
    'ரி',
    'மு',
    'ண்',
    'ற்',
    'பூ',
    'ளி',
    'எ',
    'ட',
    'மி',
    'ல்',
    'ய',
    'மா',
    'ல',

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


      // appBar: AppBar(
      //   title: Text(
      //     "Weekly",
      //     style: TextStyle(color: Colors.cyan[900]),
      //   ),
      // ),
      // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values),


      body: RubberBottomSheet(
        scrollController: _scrollController,
        lowerLayer: _listView(),
       
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



  Widget _listView(){

    return 


ListView(
  children: <Widget>[

   GridView.count(
     shrinkWrap: true,
          crossAxisCount: 5,
          padding: EdgeInsets.only(right: 55,left: 55,top: 22,bottom: 10),
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
        ),

  GridView.count(
    shrinkWrap: true,
          crossAxisCount: 8,
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
        height: 60,
        padding: EdgeInsets.all(5),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}
