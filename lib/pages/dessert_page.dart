import 'package:flutter/material.dart';

import '../widgets/dessert/icons_section_widget.dart';
import '../widgets/dessert/recipe_section_widget.dart';
import '../widgets/dessert/title_section_widget.dart';

class DessertPage extends StatelessWidget {
  const DessertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dessert'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dessert.png',
              fit: BoxFit.cover,
            ),
            const TitleSectionWidget(),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  IconColumn(Icons.kitchen, Colors.blue, 'PREP:', '25 min'),
                  IconColumn(Icons.timer, Colors.blue, 'COOK:', '1 hr'),
                  IconColumn(Icons.kitchen, Colors.blue, 'FEEDS:', '4-5'),
                ],
              ),
            ),
            const RecipeInformationSectionWidget(),
          ],
        ),
      ),
    );
  }
}
