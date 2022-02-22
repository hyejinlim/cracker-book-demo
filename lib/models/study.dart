// To parse this JSON data, do
//
//     final study = studyFromJson(jsonString);

import 'dart:convert';

Study studyFromJson(String str) => Study.fromJson(json.decode(str));

String studyToJson(Study data) => json.encode(data.toJson());

class Study {
  Study({
    required this.iconSrc,
    required this.name,
    required this.type,
    required this.title,
    required this.datetime,
    required this.memberCount,
  });

  String iconSrc;
  String name;
  String type;
  String title;
  String datetime;
  int memberCount;

  factory Study.fromJson(Map<String, dynamic> json) => Study(
        iconSrc: json["iconSrc"],
        name: json["name"],
        type: json["type"],
        title: json["title"],
        datetime: json["datetime"],
        memberCount: json["memberCount"],
      );

  Map<String, dynamic> toJson() => {
        "iconSrc": iconSrc,
        "name": name,
        "type": type,
        "title": title,
        "datetime": datetime,
        "memberCount": memberCount,
      };
}

final List<Study> studyLst = [
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠1',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 1,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_yellow.svg',
    name: '주리2',
    type: '토론',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_pink.svg',
    name: '주리3',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠1',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 1,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_green.svg',
    name: '주리4',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리7',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리7',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리7',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리7',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리7',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리7',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
  Study(
    iconSrc: 'assets/images/svg_icon_blue.svg',
    name: '주리7',
    type: '글쓰기',
    title: '사소한 일상으로 만드는 컨텐츠2',
    datetime: '2021.04.26 ~ 05.21 토 14:00',
    memberCount: 0,
  ),
];
