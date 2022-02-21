// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
  Category({
    required this.label,
    required this.imageSrc,
  });

  String label;
  String imageSrc;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        label: json["label"],
        imageSrc: json["imageSrc"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "imageSrc": imageSrc,
      };
}

final List<Category> categories = [
  Category(label: '토론', imageSrc: 'assets/images/img_chats.png'),
  Category(label: '발표', imageSrc: 'assets/images/img_microphone.png'),
  Category(label: '글쓰기', imageSrc: 'assets/images/img_post.png'),
  Category(label: '포트폴리오', imageSrc: 'assets/images/img_portfolio.png'),
  Category(label: '기타', imageSrc: 'assets/images/img_etc.png'),
];
