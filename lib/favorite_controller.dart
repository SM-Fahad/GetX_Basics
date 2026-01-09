
import 'package:get/get.dart';

class FavoriteController extends GetxController {
 RxList<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Grapes",
    "Orange",
    "Pineapple",
    "Strawberry",
    "Watermelon",
    "Peach",
    "Cherry"
  ].obs;
  RxList selectedFruits = [].obs;

  addToFavorite(String fruit) {
    selectedFruits.add(fruit);
    print('Favorite List: ' + selectedFruits.toString());
  }

  removeFromFavorite(String fruit) {
    selectedFruits.remove(fruit);
    print('Favorite List: ' + selectedFruits.toString());
  }

  void toggleFavorite(String fruit) {
    if (selectedFruits.contains(fruit)) {
      selectedFruits.remove(fruit);
      print('Favorite List: ' + selectedFruits.toString());
    } else {
      selectedFruits.add(fruit);
      print('Favorite List: ' + selectedFruits.toString());
    }
  }
}