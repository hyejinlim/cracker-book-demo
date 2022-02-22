import 'package:cracker_book_demo/config/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StudyTypeMember extends StatelessWidget {
  const StudyTypeMember({
    Key? key,
    required this.type,
    required this.memberCount,
  }) : super(key: key);

  final String type;
  final int memberCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Image.asset(
                  'assets/images/img_book_open_4x.png',
                  width: 18,
                  height: 18,
                ),
              ),
              Text(
                type,
                style: const TextStyle(
                  color: TEXT_BLUE,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: SvgPicture.asset('assets/images/svg_people.svg'),
            ),
            Text(
              '멤버 $memberCount/5',
              style: const TextStyle(
                color: TEXT_BLUE,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
