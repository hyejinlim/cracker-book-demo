import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              ? SvgPicture.asset('assets/images/svg_like_on.svg')
              : SvgPicture.asset('assets/images/svg_like_off.svg'),
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
