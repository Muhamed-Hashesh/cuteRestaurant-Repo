import 'package:cute_restaurant/constants.dart';
import 'package:cute_restaurant/models/donut_card_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestOffersItem extends StatelessWidget {
  const BestOffersItem({
    super.key,
    required this.card,
  });

  final BestOfferT card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: MediaQuery.sizeOf(context).width - 32,
        height: MediaQuery.sizeOf(context).height / 7.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Colors.white,
          boxShadow: boxShadowList,
        ),
        child: Row(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Image.asset(
                card.image,
                height: MediaQuery.sizeOf(context).height / 12,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                card.title,
                style: const TextStyle(fontSize: 22, color: textColor),
              ),
              Text(
                card.subtitle,
                style: GoogleFonts.unbounded(
                    fontWeight: FontWeight.w300,
                    color: textColor,
                    fontSize: 16),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
