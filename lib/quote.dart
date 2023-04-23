// class Quote{
//   late String text;
//   late String author;
//
//   Quote(String text,String author){
//     this.text = text;
//     this.author = author;
//   }
// }
// Quote myquote = Quote('Be yourself', 'ABC');

//Another way of doing above is using named parameter.


class Quote{
  late String text;
  late String author;
  Quote({required this.text,required this.author});
}

// Quote myQuotes = Quote(author: 'ABC',text: 'Be yourself' ); // We can even write author first and then quote. Sequence does not matter as we are using named parameter.
