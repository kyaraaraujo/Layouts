import 'package:flutter/material.dart';

import '../constants/pages_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Layouts Pages'),
      ),
      body: GridView.count(
        childAspectRatio: 1.3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.only(left: 10, right: 10),
        crossAxisCount: 2,
        children: const [
          ...pages,
        ],
      ),
    );
  }
}
