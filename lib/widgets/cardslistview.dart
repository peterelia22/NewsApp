import 'package:flutter/material.dart';
import 'package:newsapp/items/cards.dart';
import 'package:newsapp/models/cardmodel.dart';

class cardslistview extends StatelessWidget {
  const cardslistview({
    Key? key, // Use Key? key directly here
  }) : super(key: key); // Remove super.key
  final List<CardModel> cards = const [
    CardModel(CardName: 'Business', ImagePath: 'assets/images/business.png'),
    CardModel(CardName: 'Sports', ImagePath: 'assets/images/sports.png'),
    CardModel(
        CardName: 'Technology', ImagePath: 'assets/images/technology.png'),
    CardModel(CardName: 'Science', ImagePath: 'assets/images/science.png'),
    CardModel(CardName: 'Health', ImagePath: 'assets/images/health.png'),
    CardModel(
        CardName: 'Entertainment', ImagePath: 'assets/images/entertaiment.png'),
    CardModel(CardName: 'General', ImagePath: 'assets/images/general.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return Cards(card: cards[index]); // Use card instead of Card
          }),
    );
  }
}
