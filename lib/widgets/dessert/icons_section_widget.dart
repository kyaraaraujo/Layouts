import 'package:flutter/material.dart';

class IconColumn extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String titleLabel;
  final String label;

  const IconColumn(this.icon, this.color, this.titleLabel, this.label,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Text(titleLabel),
        ),
        Text(label),
      ],
    );
  }
}
