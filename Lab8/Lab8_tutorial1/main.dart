import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'ROW & COLUMN LAYOUT'
        ),
        backgroundColor: Colors.purple[800],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.purple[800],
      ),
      //   body: Padding(
      //     padding: EdgeInsets.all(90),
      //     child: Text('Hello only padding'),
      //   ),
      // );
      // body: Row(
      //   children: [
      //     Text("Hello Everyone"),
      //     FlatButton(
      //       onPressed: () {},
      //       color: Colors.redAccent,
      //       child: Text('Press me'),
      //     ),
      //     Container(
      //       color: Colors.greenAccent,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('inside container'),
      //     ),
      //   ],
      // ),
      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   // crossAxisAlignment: CrossAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   // children: [
      //   //   Container(
      //   //     color: Colors.deepOrange,
      //   //     padding: EdgeInsets.all(30.0),
      //   //     child: Text('inside container 1'),
      //   //   ),
      //   //   Container(
      //   //     color: Colors.amber,
      //   //     padding: EdgeInsets.all(50.0),
      //   //     child: Text('inside container 2'),
      //   //   ),
      //   //   Container(
      //   //     color: Colors.cyan,
      //   //     padding: EdgeInsets.all(70.0),
      //   //     child: Text('inside container 3'),
      //   //   ),
      //   // ],
      //   children: [
      //   Row(
      //     // children: [
      //     //   Text('Hello everyone....   '),
      //     //   Text('  ....Hello ddu...')
      //     // ],
      //   ),
      //     Container(
      //       color: Colors.deepOrange,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('inside container 1'),
      //     ),
      //     Container(
      //       color: Colors.amber,
      //       padding: EdgeInsets.all(50.0),
      //       child: Text('inside container 2'),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(70.0),
      //       child: Text('inside container 3'),
      //     ),
      //   ],
      // ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
                  color: Colors.deepOrange,
                  padding: EdgeInsets.all(30),
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  child: Text('1'),
          ),
          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(30),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Text('2'),
          ),
          Container(
            color: Colors.limeAccent,
            padding: EdgeInsets.all(30),
            // padding: EdgeInsets.symmetric(horizontal: 21, vertical: 30),
            child: Text('3'),
          )
        ],
      ),
    );
  }
}


