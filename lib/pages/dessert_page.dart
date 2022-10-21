import 'package:flutter/material.dart';
import 'package:layouts/widgets/icons_section_widget.dart';
import 'package:layouts/widgets/dessert/recipe_section_widget.dart';
import 'package:layouts/widgets/dessert/title_section_widget.dart';

class DessertPage extends StatelessWidget {
  const DessertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dessert'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/dessert.png',
            fit: BoxFit.cover,
          ),
          titleSection,
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildIconColumn(Icons.kitchen, Colors.blue, 'PREP:', '25 min'),
                buildIconColumn(Icons.timer, Colors.blue, 'COOK:', '1 hr'),
                buildIconColumn(Icons.kitchen, Colors.blue, 'FEEDS:', '4-5'),
              ],
            ),
          ),
          recipeInformationSection,
        ]),
      ),
    );
  }
}
