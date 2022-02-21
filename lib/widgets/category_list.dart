import 'package:cracker_book_demo/config/constant.dart';
import 'package:cracker_book_demo/models/category.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              label: categories[index].label,
              imageSrc: categories[index].imageSrc,
            ),
          );
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.label,
    required this.imageSrc,
  }) : super(key: key);

  final String label;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 70,
                offset: const Offset(20, 20),
              ),
            ],
            border: Border.all(
              color: PRIMARY_COLOR,
              width: 1,
            ),
          ),
          child: Image.asset(
            imageSrc,
            width: 32,
            height: 32,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
