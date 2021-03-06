import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/images/logo.png',
          width: 151,
          height: 16,
        ),
      ),
      body: const Body(),
    );
  }
}
