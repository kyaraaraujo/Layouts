import 'package:flutter/material.dart';

import 'content_section_widget.dart';

class TitleContentSectionWidget extends StatelessWidget {
  final String title;
  final String content;
  final Color? containerColor;

  const TitleContentSectionWidget(this.title, this.content, this.containerColor,
      {Key? key})
      : super(key: key);

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

  @override
  Widget build(BuildContext context) {
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
        ContentSectionWidget(content),
      ]),
    );
  }
}
