import 'package:cracker_book_demo/config/constant.dart';
import 'package:cracker_book_demo/models/study.dart';
import 'package:cracker_book_demo/widgets/study_type_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryDetailItem extends StatelessWidget {
  const CategoryDetailItem({
    Key? key,
    required this.study,
  }) : super(key: key);
  final Study study;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/img_book2.png',
                fit: BoxFit.fitWidth,
                height: 173,
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: const Offset(2, 1),
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/images/svg_like_off.svg',
                ),
              ),
            ),
          ],
        ),
        StudyTypeMember(
          type: study.type,
          memberCount: study.memberCount,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 10,
          ),
          child: Text(
            study.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          study.datetime,
          style: const TextStyle(
            fontSize: 12,
            color: TEXT_BLACK_777,
          ),
        ),
      ],
    );
  }
}
