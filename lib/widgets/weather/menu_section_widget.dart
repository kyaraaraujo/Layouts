import 'package:flutter/material.dart';

import 'switchWidget.dart';

class MenuSectionWidget extends StatelessWidget {
  const MenuSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.white,
                fixedSize: const Size(40, 40)),
            onPressed: () {},
            child: Icon(
              Icons.format_list_bulleted_rounded,
              color: Colors.grey.shade700,
            ),
          ),
          const SwitchWidget(),
        ],
      ),
    );
  }
}
