import 'package:cracker_book_demo/models/study.dart';
import 'package:cracker_book_demo/widgets/category_list.dart';
import 'package:flutter/material.dart';

import 'category_detail_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CategoryList(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: studyLst.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4, // 가로 space
              crossAxisSpacing: 8, // 세로 space
              childAspectRatio: 0.7, // child의 가로 세로 비율
            ),
            itemBuilder: (BuildContext context, int index) {
              final study = studyLst[index];
              return CategoryDetailItem(study: study);
            },
          ),
        ),
      ],
    );
  }
}
