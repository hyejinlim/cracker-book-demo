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
        /* title */

        /* title */
        Column(
          children: [
            // title
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      '\'생각의 쓰임\'의 \n 스터디',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: '전체보기',
                        ),
                        WidgetSpan(
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // image
            Container(
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
                    child: Image.asset('assets/images/img_book1.png'),
                  ),
                  Positioned(
                    top: 25,
                    right: 21,
                    child: Column(
                      children: [
                        Image.asset('assets/images/icon_book.png'),
                        const Text(
                          '12',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // list
            // Container(
            //   height: 300,
            //   padding: const EdgeInsets.all(10.0),
            //   child: GridView.count(
            //     crossAxisCount: 1,
            //     scrollDirection: Axis.horizontal,
            //     shrinkWrap: true,
            //     children: List.generate(4, (index) {
            //       return Column(
            //         children: [
            //           Container(
            //             padding: const EdgeInsets.all(40),
            //             margin: const EdgeInsets.all(8),
            //             child: Text('$index'),
            //           ),
            //         ],
            //       );
            //     }).toList(),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.red),
            //   ),
            //   child: ListView.builder(
            //     padding: const EdgeInsets.all(10.0),
            //     scrollDirection: Axis.horizontal,
            //     itemCount: categories.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         width: 300,
            //         decoration: BoxDecoration(
            //           border: Border.all(color: Colors.red),
            //         ),
            //         margin: const EdgeInsets.symmetric(horizontal: 10.0),
            //         child: Text('$index'),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
