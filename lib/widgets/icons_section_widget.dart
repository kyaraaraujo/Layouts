import 'package:flutter/material.dart';

Column buildIconColumn(
  IconData icon,
  Color color,
  String titleLabel,
  String label,
) {
  return Column(
    children: [
      Icon(icon, color: color),
      Text(titleLabel),
      Text(label),
    ],
  );
}
