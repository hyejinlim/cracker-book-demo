import 'package:flutter/material.dart';

class StudyLikeWidget extends StatefulWidget {
  const StudyLikeWidget({Key? key}) : super(key: key);

  @override
  _StudyLikeWidgetState createState() => _StudyLikeWidgetState();
}

class _StudyLikeWidgetState extends State<StudyLikeWidget> {
  bool isLike = true;
  int likeCount = 16;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            toggleLike();
          },
          child: (isLike)
              ? Image.asset('assets/images/img_like_on.png')
              : Image.asset('assets/images/img_like_off.png'),
        ),
        Text('$likeCount'),
      ],
    );
  }

  void toggleLike() {
    setState(() {
      if (isLike) {
        likeCount -= 1;
        isLike = false;
      } else {
        likeCount += 1;
        isLike = true;
      }
    });
  }
}
