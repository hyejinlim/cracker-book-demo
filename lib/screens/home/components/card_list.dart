import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'study_like.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
    required this.iconSrc,
    required this.name,
    required this.title,
    required this.datetime,
    this.peopleCount = 0,
  }) : super(key: key);

  final String iconSrc;
  final String name;
  final String title;
  final String datetime;
  final int peopleCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86, // 345
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.red),
      // ),
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(iconSrc),
                ),
                Text(name),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/img_book_open_4x.png',
                            width: 18,
                            height: 18,
                          ),
                          const Text('글쓰기'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/svg_people.svg'),
                        Text('멤버 $peopleCount/5'),
                      ],
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 4,
                    bottom: 14,
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  datetime,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const StudyLikeWidget(),
        ],
      ),
    );
  }
}
