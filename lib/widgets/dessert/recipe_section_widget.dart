import 'package:flutter/material.dart';
import 'package:layouts/constants/recipe_constant.dart';
import 'package:layouts/widgets/dessert/content_section_widget.dart';

import 'title_content_section_widget.dart';

class RecipeInformationSectionWidget extends StatelessWidget {
  const RecipeInformationSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color lightBlueColor = Color.fromARGB(255, 197, 230, 246);

    return Column(
      children: [
        ContentSectionWidget(description),
        TitleContentSectionWidget(
          'INGREDIENTS',
          ingredientsContent,
          lightBlueColor,
        ),
        TitleContentSectionWidget(
          'METHOD',
          methodContent,
          lightBlueColor,
        ),
      ],
    );
  }
}
