import 'package:flutter/material.dart';
import 'package:layouts/widgets/dessert/favorite_widget.dart';

class TitleSectionWidget extends StatelessWidget {
  const TitleSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: const [
          Expanded(
            child: Text(
              'A Delicious Dessert',
              style: TextStyle(fontSize: 20),
            ),
          ),
          FavoriteWidget(),
        ],
      ),
    );
  }
}
