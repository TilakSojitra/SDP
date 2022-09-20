import 'package:flutter/material.dart';

// import 'package:lab8_tutorial_2/quote.dart';
// import 'quote.dart';
void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// const FinalTest1({Key? key}) : super(key: key);
  num age = 19.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              setState(() {
                age += 1;
              });
            },
            backgroundColor: Colors.red,
          ),
          FloatingActionButton(
            child: Text(
              '-',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              setState(() {
                age -= 1;
              });
            },
            backgroundColor: Colors.red,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/sub_assets/pic1.jpeg'),
              radius: 55.0,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Foram Patel',
              style: TextStyle(
                color: Colors.pink[600],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$age',
              style: TextStyle(
                color: Colors.pink[600],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.deepOrange,
                ),
                SizedBox(width: 12.0),
                Text(
                  'foramp911@gmail.com',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Test1 extends StatefulWidget {
  //const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


// void main() => runApp(MaterialApp(
//   home: EchoList(),
// ));
//
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
//
// class _EchoListState extends State<EchoList> {
//
//   List<Quote> quotes = [
//     Quote(text: 'Be yourself; everyone else is already taken.',author: 'Oscar Wilde'),
//     Quote(author: 'Albert Einstein', text: 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.'),
//     Quote(text: 'I have not failed. I\'ve just found 10,000 ways that won\'t work.', author: 'Thomas A. Edison'),
//   ];
//
//  Widget quoteTemplate(quote){
//    return Card(
//      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
//      child: Padding(
//        padding: const EdgeInsets.all(12.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: [
//            Text(
//              quote.text,
//              style: TextStyle(
//                fontSize: 20,
//                color: Colors.deepPurple,
//              ),
//            ),
//            SizedBox(height: 10,),
//            Text(
//              quote.author,
//              style: TextStyle(
//                fontSize: 26,
//                color: Colors.deepPurple,
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent[100],
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Column(
//         children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//         // children: quotes.map((e) => Text('${e.text} -${e.author}')).toList(),
//       ),
//     );
//   }
// }
















