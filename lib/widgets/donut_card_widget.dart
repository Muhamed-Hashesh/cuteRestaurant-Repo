import 'package:cute_restaurant/constants.dart';
import 'package:cute_restaurant/models/donut_card_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonutCard extends StatelessWidget {
  const DonutCard({
    super.key,
    required this.card,
  });

  final DonutsCard card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width - 50,
        // color: textColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 6,
              width: MediaQuery.sizeOf(context).width,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        card.title,
                        style: GoogleFonts.unbounded(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        card.subtitle,
                        style: descriptionLightTextStyle,
                      )
                    ]),
              ),
            ),
            Positioned(top: 0, right: 8, child: Image.asset(card.image))
          ],
        ),
      ),
    );
  }
}
