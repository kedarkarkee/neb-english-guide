import 'package:flutter/material.dart';

import '../summary.dart';

class Summary extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final lessTitle = routeArgs['title'];
    final lessId = routeArgs['id'];
    final List summary = SUMMARY.where((summ)=>summ.id==lessId).toList();
    return Scaffold(
      appBar: AppBar(title: Text(lessTitle),),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Summary:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(summary[0].body, softWrap: true, style: TextStyle(fontSize: 20,), textAlign: TextAlign.justify,),
              )
            ],
          ),
        ),
      ),
    );
  }
}