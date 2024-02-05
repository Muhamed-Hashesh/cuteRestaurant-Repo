import 'package:cute_restaurant/constants.dart';
import 'package:cute_restaurant/models/donut_card_model.dart';
import 'package:cute_restaurant/widgets/best_offer_item.dart';
import 'package:cute_restaurant/widgets/donut_card_widget.dart';
import 'package:cute_restaurant/widgets/food_cards_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          // height: MediaQuery.sizeOf(context).height / 9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: notificationColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: const Color(0XFFD6D3C0).withOpacity(0.6),
              )
            ],
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 24),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.sizeOf(context).width / 1.8),
                child: Text(
                  'Welcome back, Pin! How Hungry are you? ',
                  style: descriptionBlackTextStyle,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SearchBar(),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 24, left: 16),
          child: Text(
            'Today’s Menu',
            style: textStyle1black,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height / 4.5,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: donutsCardList.length,
            itemBuilder: (context, i) {
              return DonutCard(card: donutsCardList[i]);
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          // width: MediaQuery.sizeOf(context).width / 3.3,
          height: MediaQuery.sizeOf(context).height / 6.4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodCardList.length,
            itemBuilder: (context, index) {
              return FoodCards(card: foodCardList[index]);
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, top: 24, bottom: 16),
          child: Text(
            'Best Offers 💕',
            style: titlesTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: bestOffersList.length,
            itemBuilder: (context, index) {
              return BestOffersItem(card: bestOffersList[index]);
            },
          ),
        ),
        const SizedBox(height: 100)
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            cursorColor: textColor,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 18),
              hintText: 'Search...',
              hintStyle: GoogleFonts.unbounded(
                fontWeight: FontWeight.w300,
                color: textColor.withOpacity(0.6),
                fontSize: 18,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 24, right: 16),
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: textColor.withOpacity(0.6),
                  size: 20,
                ),
              ),
              filled: true,
              fillColor: const Color(0XFFF5F5F5),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0XFFF5F5F5),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0XFFF5F5F5),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: MediaQuery.sizeOf(context).width / 8,
          height: MediaQuery.sizeOf(context).height / 16,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: buttonColor,
          ),
          child: const Icon(
            FontAwesomeIcons.bars,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
