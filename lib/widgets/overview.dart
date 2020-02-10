import 'package:flutter/material.dart';

import '../lesson_data.dart';

class Overview extends StatelessWidget {
  final String category;
  final String name;
  final String author;
  final String url;
  final int counter;
  const Overview(
      {this.category, this.name, this.author, this.url, this.counter});

  @override
  Widget build(BuildContext context) {
    // List category = ['Poem', 'Story', 'Essay', 'Drama'];
    return GridView(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 40,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
        ),
        children: CATEGORY.map((catData) {
          return InkWell(
            child: Container(
              child: Center(child: Text(catData.title)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      colors: [catData.color.withOpacity(0.7), catData.color],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/lesson',
                  arguments: {'id': catData.id, 'title': catData.title});
            },
            borderRadius: BorderRadius.circular(15),
          );
        }).toList());
  }
}
