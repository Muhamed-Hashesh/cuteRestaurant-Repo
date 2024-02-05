import 'package:cute_restaurant/constants.dart';
import 'package:cute_restaurant/views/cart_page_screen.dart';
import 'package:cute_restaurant/views/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 1;

  List<Widget> pagesList = const [
    Center(child: Text('data')),
    HomePage(),
    CartPage(),
    Center(
      child: Text('Profile Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // bottomNavigationBar:
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            pagesList.elementAt(selectedIndex),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height / 9.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: BottomNavigationBar(
                    // elevation: 50,
                    selectedItemColor: buttonColor,
                    unselectedItemColor: textColor,
                    selectedFontSize: 12,
                    unselectedFontSize: 12,
                    showUnselectedLabels: true,
                    currentIndex: selectedIndex,
                    type: BottomNavigationBarType.fixed,
                    onTap: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(IconlyLight.location), label: 'Location'),
                      BottomNavigationBarItem(
                          // ignore: deprecated_member_use
                          icon: Icon(FontAwesomeIcons.home),
                          label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(IconlyLight.bag2), label: 'My Cart'),
                      BottomNavigationBarItem(
                          icon: Icon(IconlyLight.profile), label: 'Me'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
