import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  // const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<String> quotes = [
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple'
  ];
  List<Quote> quotes1 = [
     Quote(text: 'Be yourself; everyone else is already taken', author: 'author1'),
    Quote(text: 'I have nothing to declare except my genius', author: 'author2'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'author3')


  ];

  Widget hello(){
    return Card(
      child: Text("Hello"),
    );
  }

  Widget quoteTemplate(quotes1){      //Widget is the return type of the function.
     return Card(
       margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
       child: Padding(
         padding: const EdgeInsets.all(12.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Text(
                 // quotes1.text[0],   //check what this does

               quotes1.text,
               // '${quotes1.text}',  //Another method.
               style: TextStyle(
                 fontSize: 18,
                   color: Colors.grey[600],
               ),
             ),
             SizedBox(height: 6,),
             Text(
               quotes1.author,
               style: TextStyle(
                 fontSize: 14,
                 color: Colors.grey[800],
               ),
             ),
            TextButton(onPressed: (){
              setState(() {
               hello();
              });
            },
                child: Row(
                  children: [
                    Text("Delete"),
                    Icon(Icons.delete)
                  ],
                )
            )
           ],
         ),
       ),
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
      // children: quotes.map((quote) {
      //   return Text(quote);   //To do same thing with $ sign use ''.
      // }).toList(),  //Because map returns iterable but children property expects text.
      //Let's use arrow function as we are returning just a single value.
      //   children: quotes.map((e) => Text(e)).toList(),
      children:
        // quotes1.map((e) => Text('${e.text} - ${e.author}')).toList(),
        quotes1.map((quotes1) => quoteTemplate(quotes1),

        ).toList(),
      ),


    );
  }
}


