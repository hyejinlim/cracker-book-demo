import 'package:cracker_book_demo/config/constant.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'screens/mypage/mypage_screen.dart';
import 'screens/study/study_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

List<Map> navigationItems = [
  {
    'type': 'image',
    'icon': 'assets/images/home_off.png',
    'activeIcon': 'assets/images/home_on.png',
    'label': '홈',
  },
  {
    'type': 'icon',
    'icon': null,
    'activeIcon': '',
    'label': '스터디 만들기',
  },
  {
    'type': 'image',
    'icon': 'assets/images/my_off.png',
    'activeIcon': 'assets/images/my_on.png',
    'label': '마이페이지',
  },
];

class _AppState extends State<App> {
  int currentIndex = 0;

  final List<Widget> children = [
    const HomeScreen(),
    const StudyScreen(),
    const MypageScreen()
  ];

  void handleTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        selectedItemColor: PRIMARY_COLOR,
        currentIndex: currentIndex,
        onTap: handleTap,
        items: navigationItems
            .map(
              (e) => BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: (e['type'] == 'image'
                      ? Image.asset(
                          e['icon'],
                          width: 22,
                          height: 22,
                        )
                      : Icon(e['icon'])),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: (e['type'] == 'image'
                      ? Image.asset(
                          e['activeIcon'],
                          width: 22,
                          height: 22,
                        )
                      : Icon(e['icon'])),
                ),
                label: e['label'],
              ),
            )
            .toList(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: Image.asset(
          'assets/images/study.png',
          width: 58,
          height: 58,
        ),
        onPressed: () => handleTap(1),
      ),
    );
  }
}
