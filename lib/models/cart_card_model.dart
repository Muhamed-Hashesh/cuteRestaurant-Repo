// import 'package:flutter/material.dart';

class CartCards {
  final String title, image;
  final double price;
  final int count;

  CartCards(
      {required this.title,
      required this.image,
      required this.price,
      required this.count});
}

List<CartCards> cartCardsList = [
  CartCards(
      title: 'Mr.Cheezy',
      image: 'assets/images/image1.png',
      price: 5.49,
      count: 1),
  CartCards(
      title: 'Fries M',
      image: 'assets/images/image2.png',
      price: 3.29,
      count: 1),
  CartCards(
      title: 'Vanilla Ice',
      image: 'assets/images/image3.png',
      price: 6.99,
      count: 1),
  CartCards(
      title: 'Americano L',
      image: 'assets/images/image4.png',
      price: 1.32,
      count: 1),
  CartCards(
      title: 'Chedder',
      image: 'assets/images/image1.png',
      price: 5.49,
      count: 1),
];
