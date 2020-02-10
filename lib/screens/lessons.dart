import 'package:flutter/material.dart';

import '../lesson_data.dart';

class LessonsScreen extends StatelessWidget {
  Widget buildListTile(BuildContext context, String id, String title, String author, String imageUrl) {
    return InkWell(
          child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(title),
        subtitle: Text(author),
      ),
      onTap: (){
        Navigator.of(context).pushNamed('/summary', arguments: {'id': id, 'title': title});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    final List less = LESSONS.where((test) {
      return test.category == catId;
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: ListView.builder(
        itemCount: less.length,
        itemBuilder: (ctx, i) {
          return buildListTile(context, less[i].id, less[i].title, less[i].author, less[i].imageUrl);
        },
      ),
    );
  }
}
