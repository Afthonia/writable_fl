import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/widgets/active_button.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/book_card.dart';

class BookOverviewScreen extends StatelessWidget {
  const BookOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(
          StyleConstants.bigPadding,
        ),
        children: [
          const BookCard(),
          ActiveButton(
            content: "Read",
            onTap: () {},
            hPad: 120.0,
          ),
          Text(
            "Persuasion",
            style: TextStyle(
              fontSize: StyleConstants.screenTitleSize,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "by Jane Austen",
            style: TextStyle(
              fontSize: StyleConstants.mediumText,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40.0),
          Text(
            "The story concerns Anne Elliot, an Englishwoman of 27 years, whose family moves to lower their expenses and reduce their debt by renting their home to an admiral and his wife. The wife's brother, Captain Frederick Wentworth, was engaged to Anne in 1806, but the engagement was broken when Anne was persuaded by her friends and family to end their relationship. Anne and Captain Wentworth, both single and unattached, meet again after a separation lasting almost eight years, setting the scene for a second, well-considered chance at love and marriage for Anne.",
            style: TextStyle(
              fontSize: StyleConstants.bigText,
            ),
            textAlign: TextAlign.justify,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
