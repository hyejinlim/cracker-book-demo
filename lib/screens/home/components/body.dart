import 'package:flutter/material.dart';

import 'card_image.dart';
import 'card_title.dart';
import 'category_item.dart';
import 'study_like.dart';

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
              height: 116,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Scrollbar(
                  controller: scrollController,
                  isAlwaysShown: true,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: scrollController,
                    // padding: const EdgeInsets.all(10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index.isOdd) {
                        return const Divider();
                      }
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
                                    child: Image.asset(
                                        'assets/images/img_icon_blue.png'),
                                  ),
                                  const Text('주리'),
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
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/img_book_open_4x.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const Text('1'),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/img_people.png'),
                                          const Text('3'),
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
                                      '$index 사소한 일상으로 만드는 컨텐츠',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    '2021.04.26 ~ 05.21 토 14:00',
                                    style: TextStyle(
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
