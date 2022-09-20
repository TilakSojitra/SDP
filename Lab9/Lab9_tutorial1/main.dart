import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:lab9_tutorial_1/quote_card.dart';
void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {

  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken.',
        author: 'Oscar Wilde'),
    Quote(author: 'Albert Einstein',
        text: 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.'),
    Quote(
        text: 'I have not failed. I\'ve just found 10,000 ways that won\'t work.',
        author: 'Thomas A. Edison'),
  ];

  /* Widget quoteTemplate(quote){
    return QuoteCard(quote: quote,);*/
  // return Card(
  //   margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
  //   child: Padding(
  //     padding: const EdgeInsets.all(12.0),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //       children: [
  //         Text(
  //           quote.text,
  //           style: TextStyle(
  //             fontSize: 20,
  //             color: Colors.deepPurple,
  //           ),
  //         ),
  //         SizedBox(height: 10,),
  //         Text(
  //           quote.author,
  //           style: TextStyle(
  //             fontSize: 26,
  //             color: Colors.deepPurple,
  //           ),
  //         )
  //       ],
  //     ),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        // children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        // children: quotes.map((e) => Text('${e.text} -${e.author}')).toList(),
        children: quotes.map((quote) =>
            QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              },
            )).toList(),
      ),
    );
  }
}
// class QuoteCard extends StatelessWidget {
//   //const QuoteCard({Key? key}) : super(key: key);
//   final Quote quote;
//   QuoteCard({required this.quote});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.deepPurple,
//               ),
//             ),
//             SizedBox(height: 10,),
//             Text(
//               quote.author,
//               style: TextStyle(
//                 fontSize: 26,
//                 color: Colors.deepPurple,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

















