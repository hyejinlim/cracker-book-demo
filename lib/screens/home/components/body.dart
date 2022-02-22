import 'package:cracker_book_demo/models/study.dart';
import 'package:cracker_book_demo/widgets/category_list.dart';
import 'package:flutter/material.dart';

import 'card_image.dart';
import 'card_list.dart';
import 'card_title.dart';

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
                    itemCount: studyLst.length,
                    itemBuilder: (BuildContext context, int index) {
                      final i = index;
                      final iPlus = index + 1;
                      if (index.isOdd) {
                        return const Divider();
                      }
                      final study = studyLst[i];
                      final studyP = studyLst[iPlus];

                      return (iPlus == studyLst.length)
                          ? Column(
                              children: [
                                CardList(
                                  type: study.type,
                                  iconSrc: study.iconSrc,
                                  name: study.name,
                                  title: study.title,
                                  datetime: study.datetime,
                                  memberCount: study.memberCount,
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
                                  type: study.type,
                                  iconSrc: study.iconSrc,
                                  name: study.name,
                                  title: study.title,
                                  datetime: study.datetime,
                                  memberCount: study.memberCount,
                                ),
                                CardList(
                                  type: studyP.type,
                                  iconSrc: studyP.iconSrc,
                                  name: studyP.name,
                                  title: studyP.title,
                                  datetime: studyP.datetime,
                                  memberCount: studyP.memberCount,
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
