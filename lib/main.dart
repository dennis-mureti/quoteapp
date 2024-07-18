import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List quotes = [
    Quote(
        text: 'Be yourself; everyone else is allready taken.',
        author: 'Osca Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius.',
        author: 'Osca Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple.',
        author: 'Oscar Wilde')
  ];

  // Receiving quote and returning QuoteCard instance

  @override
  Widget build(BuildContext context) {
    // To loops through a list by mapping through the data
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
