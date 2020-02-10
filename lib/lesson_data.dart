import 'package:flutter/material.dart';

import './models/lesson.dart';
import './models/category.dart';

const LESSONS = const [
  Lesson(
    id: 'l1',
    category: 'c1',
    title: 'Grandmother',
    author: 'Ray Young Bear',
    imageUrl: 'https://www.merospark.com/img/uploads/1c383cd30b7c298ab50293adfecb7b18.jpg'
  ),
  Lesson(
    id: 'l2',
      category: 'c1',
      title: 'The Lamentation of the Old Pensioner',
      author: 'W.B. Yeats', imageUrl: 'https://www.merospark.com/img/uploads/a5bfc9e07964f8dddeb95fc584cd965d.jpg'),
  Lesson(
    id: 'l3',
    category: 'c1',
    title: 'Full Fathom Five Thy Father Lies',
    author: 'William Shakespeare', imageUrl: 'https://www.merospark.com/img/uploads/d645920e395fedad7bbbed0eca3fe2e0.jpg',
  ),
  Lesson(
    id: 'l4',
    category: 'c1',
    title: 'Travelling Through The Dark',
    author: 'William Stafford', imageUrl: 'https://www.merospark.com/img/uploads/a1d0c6e83f027327d8461063f4ac58a6.jpg',
  ),
  Lesson(
    id: 'l5',
    category: 'c1',
    title: 'God\'s Grandeur',
    author: 'Gerald Manley Hopkins', imageUrl: 'https://www.merospark.com/img/uploads/c0c7c76d30bd3dcaefc96f40275bdc0a.jpg',
  ),
  Lesson(
    id: 'l6',
    category: 'c2',
    title: 'About Love',
    author: 'Anton Chekhov', imageUrl: 'https://www.merospark.com/img/uploads/19ca14e7ea6328a42e0eb13d585e4c22.jpg',
  ),
   Lesson(
     id: 'l7',
    category: 'c2',
    title: 'A Story',
    author: 'Dylan Thomas', imageUrl: 'https://www.merospark.com/img/uploads/17e62166fc8586dfa4d1bc0e1742c08b.jpg',
  ),
   Lesson(
     id: 'l8',
    category: 'c2',
    title: 'The Last Voyage of the Ghost Ship',
    author: 'Garica Marquez', imageUrl: 'https://www.merospark.com/img/uploads/f7177163c833dff4b38fc8d2872f1ec6.jpg',
  ),
   Lesson(
     id: 'l9',
    category: 'c2',
    title: 'The Tell-Tale Heart',
    author: 'Edger Allan Poe', imageUrl: 'https://www.merospark.com/img/uploads/093f65e080a295f8076b1c5722a46aa2.jpeg',
  ),
   Lesson(
     id: 'l10',
    category: 'c2',
    title: 'Hansel and Gretel',
    author: 'Jacob and Wilhelm', imageUrl: 'https://www.merospark.com/img/uploads/7f39f8317fbdb1988ef4c628eba02591.jpg',
  ),
   Lesson(
     id: 'l11',
    category: 'c2',
    title: 'The Gingerbread House',
    author: 'Robert Coover', imageUrl: 'https://www.merospark.com/img/uploads/e2c420d928d4bf8ce0ff2ec19b371514.jpg',
  ),
   Lesson(id: 'l12',
    category: 'c2',
    title: 'The Little Brother and the Little Sister',
    author: 'Jacob and Wilhelm Grimn', imageUrl: 'https://www.merospark.com/img/uploads/d2ddea18f00665ce8623e36bd4e3c7c5.jpg',
  ),
   Lesson(id: 'l13',
    category: 'c2',
    title: 'The Boarding House',
    author: 'Wilhelm Grimn', imageUrl: 'https://www.merospark.com/img/uploads/03afdbd66e7929b125f8597834fa83a4.jpg',
  ),
   Lesson(
     id: 'l14',
    category: 'c3',
    title: 'Two Long Term Problems: Too Many People, Two Few Trees',
    author: 'Moti Nissani', imageUrl: 'https://www.merospark.com/img/uploads/a5771bce93e200c36f7cd9dfd0e5deaa.jpg',
  ),
   Lesson(id: 'l15',
    category: 'c3',
    title: 'Hurried Trip To Avoid A Bad Star',
    author: 'M. Lilla and C. Bishop Berry', imageUrl: 'https://www.merospark.com/img/uploads/3416a75f4cea9109507cacd8e2f2aefc.jpg',
  ),
  Lesson(id: 'l16',
    category: 'c3',
    title: 'I Have A Dream',
    author: 'Marthin Luther King Jr.', imageUrl: 'https://www.merospark.com/img/uploads/d82c8d1619ad8176d665453cfb2e55f0.jpg',
  ),
  Lesson(
    id: 'l17',
    category: 'c3',
    title: 'Women\'s Business',
    author: 'Ilene Kantrov', imageUrl: 'https://www.merospark.com/img/uploads/a684eceee76fc522773286a895bc8436.jpg',
  ),
  Lesson(
    id: 'l18',
    category: 'c3',
    title: 'The Children Who Wait',
    author: 'Marsha Traugot', imageUrl: 'https://www.merospark.com/img/uploads/9f61408e3afb633e50cdf1b20de6f466.jpg',
  ),
  Lesson(id: 'l19',
    category: 'c3',
    title: 'A Child is Born',
    author: 'Germaine Greer', imageUrl: 'https://www.merospark.com/img/uploads/72b32a1f754ba1c09b3695e0cb6cde7f.jpg',
  ),
  Lesson(id: 'l20',
    category: 'c3',
    title: 'Gretel',
    author: 'Garrison Keillor', imageUrl: 'https://www.merospark.com/img/uploads/44f683a84163b3523afe57c2e008bc8c.jpg',
  ),
  Lesson(
    id: 'l21',
    category: 'c4',
    title: 'Purgatory',
    author: 'William Butler Yeats', imageUrl: 'https://www.merospark.com/img/uploads/072b030ba126b2f4b2374f342be9ed44.jpg',
  ),
];

const CATEGORY = const [
  Category(
    id: 'c1',
    title: 'Poem',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Story',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Essay',
    color: Colors.green,
  ),
  Category(
    id: 'c4',
    title: 'Drama',
    color: Colors.amber,
  )
];
