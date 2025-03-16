/**
 *  Implement a program that uses a List to store grocery items. It should allow adding, removing, and
 displaying items. Use functions with return types and optional/named parameters. Make sure to
 handle possible null values
 * 
 */

import 'dart:io';

void main() {
  List<String> groceryList = [];

  while (true) {
    print('\n what u need:');
    print('1. Add Item');
    print('2. Remove Item');
    print('3. Display Items');
    print('4. close');

    String? num = stdin.readLineSync();

    switch (num) {
      case '1':
        print('Enter item to add: ');
        String? itemToAdd = stdin.readLineSync();
        add(groceryList, itemToAdd ?? '');
        break;

      case '2':
        print('Enter item to remove: ');
        String? itemToRemove = stdin.readLineSync();
        remove(groceryList, itemToRemove ?? '');
        break;

      case '3':
        display(groceryList);
        break;

      case '4':
        print('closing the program');
        return;

      default:
        print('Invalid option, please try again.');
    }
  }
}

void add(List<String> groceryList, String item) {
  if (item.isNotEmpty) {
    groceryList.add(item);
    print('$item is added to list');
  } else {
    print('Cannot add');
  }
}

bool remove(List<String> groceryList, String item) {
  if (groceryList.remove(item)) {
    print('$item removed from list.');
    return true;
  } else {
    print('$item not found');
    return false;
  }
}

void display(List<String> groceryList) {
  if (groceryList.isEmpty) {
    print('list is empty.');
  } else {
    print('List:');
    for (var item in groceryList) {
      print('$item');
    }
  }
}
