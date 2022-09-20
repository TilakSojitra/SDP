import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Icon Widget App'
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),
      body: Center(
        // child: Image(
        //   image: AssetImage('assets/sub_assets/pic1.jfif'),
        // ),
        // child: Icon(
        //   Icons.flutter_dash,
        //   color: Colors.pink,
        //   size: 100.0,
        // ),
        // child: ElevatedButton(
        //   child: Text('Button'),
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.green[800],
        //     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        //     textStyle: TextStyle(
        //       fontSize: 40,
        //       fontWeight: FontWeight.bold,
        //     )
        //   ),
        // ),
        // child: FlatButton(
        //   onPressed: (){
        //     print('print on console');
        //   },
        //   child: Text('Click Me'),
        //   color: Colors.redAccent,
        // ),
        // child: IconButton(
        //   icon: Icon(
        //     Icons.mail_outline_sharp,
        //   size: 70.0,
        //   ),
        //   tooltip: 'send mail me',
        //   onPressed: (){
        //     print('on console....');
        //   },
        // ),
        child: TextButton.icon(
          icon: Icon(
            Icons.photo_camera,
            color: Colors.pinkAccent,
            size: 100.0,
          ),
          label: Text(
            "Gallery",
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 45.0,
              letterSpacing: 2.0,
              backgroundColor: Colors.greenAccent,
            ),
            textAlign: TextAlign.start,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Click'),
        backgroundColor: Colors.purple[800],
      ),
    );
  }
}
