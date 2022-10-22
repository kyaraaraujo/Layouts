import 'package:flutter/material.dart';
import 'package:layouts/widgets/contact/contact_card_widget.dart';

import '../widgets/contact/contact_label_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color teal100 = Colors.teal.shade100;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/maurice-moss.webp'),
          ),
          const ContactLabelWidget(
            text: 'Maurice Moss',
            fontSize: 40,
            color: Colors.white,
            fontFamily: 'Pacifico',
          ),
          ContactLabelWidget(
            text: 'IT DEPARTMENT',
            fontSize: 19,
            color: teal100,
            letterSpacing: 2.5,
          ),
          SizedBox(
            height: 20,
            width: 140,
            child: Divider(
              color: teal100,
            ),
          ),
          const ContactCardWidget(
              icon: Icon(Icons.phone),
              text: '0118 999 881 999 119 7253',
              fontSize: 20),
          const ContactCardWidget(
              icon: Icon(Icons.email),
              text: 'mauricemoss@reynholm-industries.com',
              fontSize: 15),
        ],
      ),
    );
  }
}
