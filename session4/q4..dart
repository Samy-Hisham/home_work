/* 
 4. Maps, Functions & User Input
 Create a Dart program that:
 - Declares a Map<String, int> where keys are fruit names and values are their prices.
 - Implements a function getPrice(String fruitName) that returns the price of a
 given fruit.
 - If the fruit is not found, return -1.
 Call the function inside main() and print the result
 */

void main() {
  Map<String, int> fruitPrices = {
    'Apple': 100,
    'Banana': 50,
    'Orange': 80,
    'Grapes': 120,
    'Mango': 150,
  };

  String fruitName = 'Banana';

  int price = getPrice(fruitPrices, fruitName);
  if (price != -1) {
    print('The price of $fruitName is: \$${price}');
  } else {
    print('$fruitName not found.');
  }
}

int getPrice(Map<String, int> fruitPrices, String fruitName) {
  return fruitPrices[fruitName] ?? -1;
}
