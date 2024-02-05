import 'package:cute_restaurant/constants.dart';
import 'package:cute_restaurant/models/cart_card_model.dart';
import 'package:cute_restaurant/widgets/cart_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartPage extends StatelessWidget {
  // final totalPrice;
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Cart',
                    style: textStyle1black,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width / 7.3,
                    height: MediaQuery.sizeOf(context).height / 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: iconsBG1,
                    ),
                    child: const Icon(
                      FontAwesomeIcons.xmark,
                      color: buttonColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    thickness: 2,
                    color: buttonColor.withOpacity(0.2),
                    indent: 10,
                    endIndent: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'My Order',
                            style: TextStyle(fontSize: 11),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.sizeOf(context).width / 9,
                            height: MediaQuery.sizeOf(context).height / 20,
                            decoration: BoxDecoration(
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.sizeOf(context).width / 9,
                            height: MediaQuery.sizeOf(context).height / 20,
                            decoration: BoxDecoration(
                                color: const Color(0xffF5CAC3),
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 15),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Payment',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.sizeOf(context).width / 9,
                            height: MediaQuery.sizeOf(context).height / 20,
                            decoration: BoxDecoration(
                                color: const Color(0xffF5CAC3),
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 15),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order', style: titlesTextStyle),
                  Text(
                    'Clear all',
                    style: TextStyle(fontSize: 20, color: buttonColor),
                  )
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cartCardsList.length,
                itemBuilder: ((context, index) {
                  return CartCard(
                    card: cartCardsList[index],
                    mainPrice: cartCardsList[index].price,
                  );
                })),
            const SizedBox(height: 100)

            // ElevatedButton(onPressed: () {}, child: Text($totalPrice))
          ],
        ),
      ),
    );
  }
}
