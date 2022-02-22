import 'package:cracker_book_demo/config/constant.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          '카테고리별 스터디',
          style: TextStyle(color: BODY_TEXT_COLOR, fontSize: 16.0),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: const Body(),
    );
  }
}
