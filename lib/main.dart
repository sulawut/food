import 'package:flutter/material.dart';
import 'package:food/pages/food_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FoodListPage(title: 'Food List'),
    );
  }
}