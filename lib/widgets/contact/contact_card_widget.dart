import 'package:flutter/material.dart';

import 'contact_label_widget.dart';

class ContactCardWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final double? fontSize;

  const ContactCardWidget(
      {Key? key, required this.icon, required this.text, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color teal900 = Colors.teal.shade900;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        onTap: () {
          //TODO
        },
        textColor: teal900,
        iconColor: teal900,
        leading: Icon(
          Icons.phone,
          color: teal900,
        ),
        title: ContactLabelWidget(
          text: text,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
