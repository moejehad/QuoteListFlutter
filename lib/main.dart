import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quoutes = [
    Quote('Lorem ipsum dolor sit amet.', 'moe'),
    Quote('Lorem ipsum dolor sit amet, consectetur.', 'jehad'),
    Quote('Lorem ipsum dolor sit amet , consectetur adipiscing.', 'madhoun'),
    Quote('Lorem ipsum dolor sit amet , consectetur.', 'mohammed'),
    Quote('Lorem ipsum dolor sit amet.', 'moe'),
    Quote('Lorem ipsum dolor sit amet, consectetur.', 'jehad'),
    Quote('Lorem ipsum dolor sit amet , consectetur adipiscing.', 'madhoun'),
    Quote('Lorem ipsum dolor sit amet , consectetur.', 'mohammed'),
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('New App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quoutes.map((e) => quoteTemplate(e)).toList(),
          ),
        ),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '${quote.text}',
              style: TextStyle(fontSize: 18.0, color: Colors.grey[500]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '${quote.author}',
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}
