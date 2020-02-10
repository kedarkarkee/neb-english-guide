import 'package:flutter/foundation.dart';
class Lesson {
  final String id;
  final String category;
  final String title;
  final String author;
  final String imageUrl;

 const Lesson({@required this.id, @required this.category,@required this.title, @required this.author, @required this.imageUrl});
}