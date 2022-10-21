import 'package:flutter/material.dart';
import 'package:layouts/widgets/favorite_widget.dart';

Widget titleSection = Padding(
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
