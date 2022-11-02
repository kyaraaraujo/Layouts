import 'package:flutter/material.dart';
import 'package:layouts/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Layouts for practicing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: Colors.grey[700]),
      ),
      home: const HomePage(),
    ),
  );
}
