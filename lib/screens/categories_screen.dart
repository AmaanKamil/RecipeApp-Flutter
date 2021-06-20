import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item_widget.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories_screen';
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20),
      children: DUMMY_CATEGORIES
          .map((categoryData) => CategoryItemWidget(
              categoryData.id, categoryData.title, categoryData.color))
          .toList(),
    );
  }
}
