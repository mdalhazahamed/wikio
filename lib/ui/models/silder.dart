import 'package:flutter/material.dart';

class Silder {
  final String imageUrl;
  final String title;
  final String subtitle;

  Silder({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });
}

final slideList = [
  Silder(
    imageUrl: "assets/images/01.png",
    title: "Find Your Destination",
    subtitle:
        "Lorem ipsum sit amnet, consecteur\nadipiscing elit.Elementum sed ament elit\ncommodo, vulpuatte rius",
  ),
  Silder(
    imageUrl: "assets/images/02.png",
    title: "Book Your Ride",
    subtitle: "Lorem ipsum sit amnet, consecteur\nadipiscing elit.Elementum sed ament elit\ncommodo, vulpuatte rius",
  ),
  Silder(
    imageUrl: "assets/images/03.png",
    title: "Choose Your Vehicle",
    subtitle:
        "Lorem ipsum sit amnet, consecteur\nadipiscing elit.Elementum sed ament elit\ncommodo, vulpuatte rius",
  ),
];
