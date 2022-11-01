import 'package:flutter/material.dart';
import 'package:food/models/food.dart';
import 'package:food/pages/food_page.dart';

var foodList = [
  Food(
    name: 'ข้าวมันไก่',
    price: 40,
    imageUrl: 'kaomankai.png',
  ),
  Food(
    name: 'ข้าวหมูกรอบ',
    price: 45,
    imageUrl: 'kaomukorb.png',
  ),
];

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int i) {
          var food = foodList[i];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPage(food: food)),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/${food.imageUrl}',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name,
                            style: const TextStyle(fontSize: 20.0),
                          ),
                          Text('${food.price} บาท'),
                        ],
                      ),
                    ),
                    Text('${food.orderCount}'),
                    SizedBox(width: 10.0)
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: foodList.length,
      ),
    );
  }
}
