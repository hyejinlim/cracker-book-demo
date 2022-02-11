import 'package:flutter/material.dart';

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
        title: Image.asset('assets/images/logo.png'),
      ),
      body: const Center(
        child: Text('home'),
      ),
    );
  }
}
