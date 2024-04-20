import 'package:flutter/material.dart';
import 'package:writable_fl/widgets/quote_card.dart';

class FavoriteQuotes extends StatelessWidget {
  const FavoriteQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return const QuoteCard();
        },
      ),
    );
  }
}
