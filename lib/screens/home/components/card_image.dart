import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    Key? key,
    required this.cardImage,
    required this.likeCount,
  }) : super(key: key);

  final String cardImage;
  final String likeCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xFFFCF587),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(cardImage),
          ),
          Positioned(
            top: 25,
            right: 21,
            child: Column(
              children: [
                Image.asset('assets/images/icon_book.png'),
                Text(
                  likeCount,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
