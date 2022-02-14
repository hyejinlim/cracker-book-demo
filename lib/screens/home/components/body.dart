import 'package:flutter/material.dart';

import 'card_image.dart';
import 'card_list.dart';
import 'card_title.dart';
import 'category_item.dart';

List<Map> categories = [
  {'label': '토론', 'imageSrc': 'assets/images/img_chat.png'},
  {'label': '발표', 'imageSrc': 'assets/images/img_microphone.png'},
  {'label': '글쓰기', 'imageSrc': 'assets/images/img_post.png'},
  {'label': '포트폴리오', 'imageSrc': 'assets/images/img_portfolio.png'},
  {'label': '기타', 'imageSrc': 'assets/images/img_etc.png'},
];

List<Map> cards = [
  {'book': '생각의 쓰임', 'bookImageSrc': 'assets/images/img_book1.png'},
];

List<Map> studies = [
  {
    'iconSrc': 'assets/images/img_icon_blue.png',
    'name': '주리1',
    'title': '사소한 일상으로 만드는 컨텐츠1',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
    'peopleCount': 1,
  },
  {
    'iconSrc': 'assets/images/img_icon_yellow.png',
    'name': '주리2',
    'title': '사소한 일상으로 만드는 컨텐츠2',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
  },
  {
    'iconSrc': 'assets/images/img_icon_blue.png',
    'name': '주리3',
    'title': '사소한 일상으로 만드는 컨텐츠1',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
    'peopleCount': 1,
  },
  {
    'iconSrc': 'assets/images/img_icon_yellow.png',
    'name': '주리4',
    'title': '사소한 일상으로 만드는 컨텐츠2',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
  },
  {
    'iconSrc': 'assets/images/img_icon_yellow.png',
    'name': '주리7',
    'title': '사소한 일상으로 만드는 컨텐츠2',
    'datetime': '2021.04.26 ~ 05.21 토 14:00',
  },
  // {
  //   'iconSrc': 'assets/images/img_icon_blue.png',
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
                width: MediaQuery.of(context).size.width / 7.2, // study
                child: CategoryItem(
                  label: categories[index]['label'],
                  imageSrc: categories[index]['imageSrc'],
                ),
              );
            },
          ),
        ),
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
