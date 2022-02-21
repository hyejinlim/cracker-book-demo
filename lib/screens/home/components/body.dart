import 'package:cracker_book_demo/widgets/category_list.dart';
import 'package:flutter/material.dart';

import 'card_image.dart';
import 'card_list.dart';
import 'card_title.dart';

List<Map> studies = [
  {
    'iconSrc': 'assets/images/svg_icon_blue.svg',
    'name': '주리1',
    'title': '사소한 일상으로 만드는 컨텐츠1',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
    'peopleCount': 1,
  },
  {
    'iconSrc': 'assets/images/svg_icon_yellow.svg',
    'name': '주리2',
    'title': '사소한 일상으로 만드는 컨텐츠2',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
  },
  {
    'iconSrc': 'assets/images/svg_icon_pink.svg',
    'name': '주리3',
    'title': '사소한 일상으로 만드는 컨텐츠1',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
    'peopleCount': 1,
  },
  {
    'iconSrc': 'assets/images/svg_icon_green.svg',
    'name': '주리4',
    'title': '사소한 일상으로 만드는 컨텐츠2',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
  },
  {
    'iconSrc': 'assets/images/svg_icon_blue.svg',
    'name': '주리7',
    'title': '사소한 일상으로 만드는 컨텐츠2',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
  },
  // {
  //   'iconSrc': 'assets/images/svg_icon_yellow.svg',
  //   'name': '주리3',
  //   'title': '사소한 일상으로 만드는 컨텐츠1',
  //   'datetime': '2021.04.26 ~ 05.21 토 14:00',
  //   'peopleCount': 1,
  // },
];

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return ListView(
      children: [
        // category
        const CategoryList(),
        Column(
          children: [
            const CardTitle(title: '생각의 쓰임'),
            const SizedBox(height: 10),
            const CardImage(
              cardImage: 'assets/images/img_book1.png',
              likeCount: '12',
            ),
            SizedBox(
              height: 226,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Scrollbar(
                  controller: scrollController,
                  isAlwaysShown: true,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: studies.length,
                    itemBuilder: (BuildContext context, int index) {
                      final i = index;
                      final iPlus = index + 1;
                      if (index.isOdd) {
                        return const Divider();
                      }
                      return (iPlus == studies.length)
                          ? Column(
                              children: [
                                CardList(
                                  iconSrc: studies[i]['iconSrc'],
                                  name: studies[i]['name'],
                                  title: studies[i]['title'],
                                  datetime: studies[i]['datetime'],
                                  peopleCount: 4,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(20.0),
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 20.0,
                                  ),
                                  child: const Text('스터디를 직접 주최해보세요!'),
                                )
                              ],
                            )
                          : Column(
                              children: [
                                CardList(
                                  iconSrc: studies[i]['iconSrc'],
                                  name: studies[i]['name'],
                                  title: studies[i]['title'],
                                  datetime: studies[i]['datetime'],
                                  peopleCount: 4,
                                ),
                                CardList(
                                  iconSrc: studies[iPlus]['iconSrc'],
                                  name: studies[iPlus]['name'],
                                  title: studies[iPlus]['title'],
                                  datetime: studies[iPlus]['datetime'],
                                ),
                              ],
                            );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
