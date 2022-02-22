import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              '\'$title\'의 \n스터디',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.grey,
              ),
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
    );
  }
}
