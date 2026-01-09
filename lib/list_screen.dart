import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxworks/favorite_controller.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  FavoriteController favoriteController = Get.put(FavoriteController());
  
  // List<String> fruits = [
  //   "Apple",
  //   "Banana",
  //   "Mango",
  //   "Grapes",
  //   "Orange",
  //   "Pineapple",
  //   "Strawberry",
  //   "Watermelon",
  //   "Peach",
  //   "Cherry"
  // ];
  // List<String> selectedFruits = [];
  
  @override
  Widget build(BuildContext context) {
    print('Favorite List: ' + favoriteController.selectedFruits.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: ListView.builder(
  itemCount: favoriteController.fruits.length,
  itemBuilder: (context, index) {
    final fruit = favoriteController.fruits[index];

    return Card(
      child: ListTile(
        onTap: () {
          favoriteController.toggleFavorite(fruit);
        },
        title: Text(fruit),
        trailing: Obx(() {
          final isSelected =
              favoriteController.selectedFruits.contains(fruit);

          return Icon(
            isSelected ? Icons.favorite : Icons.favorite_border,
            color: isSelected ? Colors.red : Colors.black,
          );
        }),
      ),
    );
  },
),

    );
  }
}