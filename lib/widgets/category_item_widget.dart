import 'package:flutter/material.dart';

import '../screens/meals_screen.dart';

class CategoryItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItemWidget(this.id, this.title, this.color);
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(MealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
//      'index': MealsScreen.categoryMeals[index]
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.3), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
