import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final double size;

  const RatingStars({super.key, required this.rating, this.size = 20});

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      stars.add(Icon(
        i <= rating ? Icons.star : Icons.star_border,
        color: Colors.amber,
        size: size,
      ));
    }
    return Row(children: stars);
  }
}