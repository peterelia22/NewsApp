import 'package:flutter/material.dart';
import 'package:newsapp/models/cardmodel.dart';
import 'package:newsapp/screens/cards_page.dart';

class Cards extends StatelessWidget {
  Cards({Key? key, required this.card}) : super(key: key);
  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CardPage(category: card.CardName);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 13),
        child: Container(
          height: 120,
          width: 260,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(card.ImagePath), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              card.CardName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
