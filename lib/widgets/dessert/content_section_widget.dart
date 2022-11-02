import 'package:flutter/material.dart';

class ContentSectionWidget extends StatelessWidget {
  final String content;
  const ContentSectionWidget(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
