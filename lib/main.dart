import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const BookSwipeApp());
}

class BookSwipeApp extends StatelessWidget {
  const BookSwipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookSwipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto', // varsayılan Roboto fontu kullanılır
      ),
      home: const HomePage(),
    );
  }
}
