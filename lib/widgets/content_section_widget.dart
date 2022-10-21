import 'package:flutter/material.dart';

Container buildTitleContentSection(
    String title, String content, Color? containerColor) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: containerColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    child: Column(children: [
      _title(title),
      buildContent(content),
    ]),
  );
}

Padding _title(String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    ),
  );
}

Padding buildContent(String content) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            content,
            textAlign: TextAlign.justify,
            softWrap: true,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    ),
  );
}
