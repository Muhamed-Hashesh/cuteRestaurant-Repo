import 'package:cute_restaurant/constants.dart';
import 'package:cute_restaurant/models/cart_card_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartCard extends StatefulWidget {
  const CartCard({super.key, required this.card, required this.mainPrice});

  final CartCards card;
  final mainPrice;

  @override
  State<CartCard> createState() => _CartCardState(mainPrice);
}

class _CartCardState extends State<CartCard> {
  var mainPrice;
  _CartCardState(this.mainPrice) {
    mainPrice = this.mainPrice;
  }

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Colors.white,
        boxShadow: boxShadowList,
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              visualDensity: const VisualDensity(vertical: 3),
              isThreeLine: false,
              leading: Image.asset(
                widget.card.image,
                width: 70,
                height: 90,
                fit: BoxFit.cover,
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Text(
                  widget.card.title,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  '\$${mainPrice.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 15, color: buttonColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color(0xffF7EDE2),
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.minus,
                        size: 15,
                        color: buttonColor,
                      ),
                      onPressed: () {
                        setState(() {
                          if (count < 2) {
                            count = count;
                          } else {
                            count--;
                            mainPrice -= widget.card.price;
                          }
                        });
                      },
                    )),
                Container(
                  alignment: Alignment.center,
                  width: 45,
                  child: Text('$count'),
                ),
                CircleAvatar(
                    radius: 16,
                    backgroundColor: buttonColor,
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.plus,
                        size: 15,
                        color: Color(0xffF7EDE2),
                      ),
                      onPressed: () {
                        setState(() {
                          count++;
                          mainPrice += widget.card.price;
                        });
                      },
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
