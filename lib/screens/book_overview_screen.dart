import 'package:flutter/material.dart';
import 'package:writable_fl/widgets/active_button.dart';
import 'package:writable_fl/widgets/book_card.dart';

class BookOverviewScreen extends StatelessWidget {
  const BookOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          BookCard(
            height: 200,
            width: MediaQuery.of(context).size.width/3,
          ),
          ActiveButton(content: "Read", onTap: () {}),
          const Text("Persuasion"),
          const Text("by Jane Austen"),
          const Text(
            "The story concerns Anne Elliot, an Englishwoman of 27 years, whose family moves to lower their expenses and reduce their debt by renting their home to an admiral and his wife. The wife's brother, Captain Frederick Wentworth, was engaged to Anne in 1806, but the engagement was broken when Anne was persuaded by her friends and family to end their relationship. Anne and Captain Wentworth, both single and unattached, meet again after a separation lasting almost eight years, setting the scene for a second, well-considered chance at love and marriage for Anne.",
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
