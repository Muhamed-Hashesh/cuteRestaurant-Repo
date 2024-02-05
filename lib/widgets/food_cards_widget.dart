import 'package:cute_restaurant/constants.dart';
import 'package:cute_restaurant/models/donut_card_model.dart';
import 'package:flutter/material.dart';

class FoodCards extends StatelessWidget {
  const FoodCards({
    super.key,
    required this.card,
  });

  final FoodCard card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        width: MediaQuery.sizeOf(context).width / 3.7,
        height: MediaQuery.sizeOf(context).height / 6.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: card.color,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: card.color.withOpacity(0.6),
            )
          ],
        ),
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                card.categoryName,
                style: cardTitleTextStyle,
              ),
            ),
          ),
          Positioned(
            bottom: -15,
            right: -15,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(28)),
              child: Image.asset(
                card.categoryImage,
                width: MediaQuery.sizeOf(context).width / 4,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
