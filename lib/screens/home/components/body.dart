import 'package:flutter/material.dart';

import 'category_item.dart';

List<Map> categories = [
  {'label': '토론', 'imageSrc': 'assets/images/img_chat.png'},
  {'label': '발표', 'imageSrc': 'assets/images/img_microphone.png'},
  {'label': '글쓰기', 'imageSrc': 'assets/images/img_post.png'},
  {'label': '포트폴리오', 'imageSrc': 'assets/images/img_portfolio.png'},
  {'label': '기타', 'imageSrc': 'assets/images/img_etc.png'},
];

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // category
        Container(
          height: 120,
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width / 7, // study
                child: CategoryItem(
                  label: categories[index]['label'],
                  imageSrc: categories[index]['imageSrc'],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
