import 'package:flutter/material.dart';
import 'package:layouts/constants/recipe_constant.dart';
import 'package:layouts/widgets/content_section_widget.dart';

Color? lightBlueColor = const Color.fromARGB(255, 197, 230, 246);

Column recipeInformationSection = Column(
  children: [
    buildContent(description),
    buildTitleContentSection(
      'INGREDIENTS',
      ingredientsContent,
      lightBlueColor,
    ),
    buildTitleContentSection(
      'METHOD',
      methodContent,
      lightBlueColor,
    ),
  ],
);
