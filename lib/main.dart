import 'package:flutter/material.dart';

import './screens/lessons.dart';
import './widgets/overview.dart';
import './screens/summary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEB English Guide',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/lesson' : (ctx) => LessonsScreen(),
        '/summary': (ctx) => Summary(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NEB English Guide'),),
      body: Overview(),
    );
  }
}

