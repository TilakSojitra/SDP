 import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
     home: FinalTest1(),
   ));

class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {

   return Scaffold(
     backgroundColor: Colors.lightGreen[100],
     appBar: AppBar(
       title: Text('My First App'),
       centerTitle: true,
       backgroundColor: Colors.lightBlue[600],
       elevation: 0.0,
     ),
     body: Padding(
       padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CircleAvatar(
                 backgroundColor: Colors.blue,
                 radius: 105,
                 child:CircleAvatar(

                   backgroundImage: AssetImage('images/pic.jpg'),
                   radius: 100,
                 ),
               ),

             ],
           ),
           SizedBox(
             height: 40,
           ),
           Text(
             'NAME: ',
             style: TextStyle(
               color: Colors.grey[30],
               letterSpacing: 2.0,
               fontSize: 15.0,
               fontWeight:FontWeight.bold,
             ),
           ),
           SizedBox(height: 10),
           Text(
             'Tilak Sojitra',
             style: TextStyle(
               color: Colors.blue[900],
               letterSpacing: 2.0,
               fontWeight: FontWeight.bold,
               fontSize: 25.0,
             ),
           ),
           SizedBox(height: 40),
           Text(
             'AGE:',
             style: TextStyle(
               color: Colors.grey[30],
               letterSpacing: 2.0,
               fontSize: 15.0,
               fontWeight:FontWeight.bold,
             ),
           ),
           SizedBox(height: 10),
           Text(
             '19',
             style: TextStyle(
               color: Colors.blue[900],
               letterSpacing: 2.0,
               fontWeight: FontWeight.bold,
               fontSize: 25.0,
             ),
           ),
           SizedBox(height: 50),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(
                 Icons.email_outlined,
                 color: Colors.deepPurple[800],
               ),
               SizedBox(width: 12.0),
               Text(
                 'pateltilak2468@gmail.com',
                 style: TextStyle(
                   color: Colors.brown[800],
                   fontSize: 20.0,
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
