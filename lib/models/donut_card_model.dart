// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cute_restaurant/constants.dart';
import 'package:flutter/material.dart';

class DonutsCard {
  final String title, subtitle, image;
  final Color color;
  DonutsCard({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });
}

class FoodCard {
  final String categoryName, categoryImage;
  final Color color;

  FoodCard(
      {required this.categoryName,
      required this.categoryImage,
      required this.color});
}

List<DonutsCard> donutsCardList = [
  DonutsCard(
      title: 'Free Donut!',
      subtitle: 'For orders over \$20',
      image: 'assets/images/3d-casual-life-donut-with-pink-icing 1.png',
      color: mintGreenColor),
  DonutsCard(
      title: 'Classic Taste',
      subtitle: 'For orders over \$50',
      image: 'assets/images/3d-casual-life-donut-with-pink-icing 1.png',
      color: const Color(0xffF6BD60)),
  DonutsCard(
      title: 'Frenchdog!',
      subtitle: 'For orders over \$15',
      image: 'assets/images/3d-casual-life-donut-with-pink-icing 1.png',
      color: const Color(0xffF5CAC3)),
];

List<FoodCard> foodCardList = [
  FoodCard(
      categoryName: 'Burgers',
      categoryImage: 'assets/images/image1.png',
      color: const Color(0xffFFEF92)),
  FoodCard(
      categoryName: 'Fries',
      categoryImage: 'assets/images/image2.png',
      color: const Color(0xffF5CAC3)),
  FoodCard(
      categoryName: 'Drinks',
      categoryImage: 'assets/images/image3.png',
      color: const Color(0xffB6D7CF)),
  FoodCard(
      categoryName: 'Burgers',
      categoryImage: 'assets/images/image1.png',
      color: const Color(0xffA9D7DA)),
  FoodCard(
      categoryName: 'Fries',
      categoryImage: 'assets/images/image2.png',
      color: const Color(0xffF28482)),
  FoodCard(
      categoryName: 'Drinks',
      categoryImage: 'assets/images/image3.png',
      color: const Color(0xffFFEF92)),
];

class BestOfferT {
  final String image, title, subtitle;

  BestOfferT(
      {required this.image, required this.title, required this.subtitle});
}

List<BestOfferT> bestOffersList = [
  BestOfferT(
      image: 'assets/images/نقانق😂.png',
      title: 'Frenchdog',
      subtitle: 'Tasty&Spicy 🌶🌶🌶'),
  BestOfferT(
      image: 'assets/images/نقانق😂.png',
      title: 'Burgers',
      subtitle: 'Over For orders'),
  BestOfferT(
      image: 'assets/images/نقانق😂.png', title: 'Drinks', subtitle: 'Tasty'),
  BestOfferT(
      image: 'assets/images/نقانق😂.png',
      title: 'Frenchdog',
      subtitle: 'Spicy 💥💥'),
];
