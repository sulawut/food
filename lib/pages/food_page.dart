import 'package:flutter/material.dart';
import 'package:food/models/food.dart';

class FoodPage extends StatelessWidget {
  final Food food;

  const FoodPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food.name)),
      body: Column(
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 2.5,
                child: Image.asset(
                  'assets/images/${food.imageUrl}',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.black.withOpacity(0.4),
                  child: Text(
                    '${food.price} บาท',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
