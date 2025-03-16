/**
 *  Create a to-do list program using a List where each item has a description, due date, and
 completion status (as bool). Implement methods to add, remove, and update tasks, including the
 use of for-each loops
 * 
 */

import 'dart:io';

void main() {
  TodoList todoList = TodoList();

  while (true) {
    print('\nwhat u need');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. Update Task');
    print('4. Display Tasks');
    print('5. Exit');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter task description: ');
        String? description = stdin.readLineSync();
        print('Enter due date (YYYY-MM-DD): ');
        String? dueDateString = stdin.readLineSync();

        if (description != null && dueDateString != null) {
          DateTime dueDate = DateTime.tryParse(dueDateString) ?? DateTime.now();
          todoList.addTask(description, dueDate);
        }
        break;

      case '2':
        print('Enter task index to remove: ');
        int? indexToRemove = int.parse(stdin.readLineSync()!);
        if (indexToRemove != null) {
          todoList.removeTask(indexToRemove);
        }
        break;

      case '3':
        print('Enter task index to update: ');
        int? indexToUpdate = int.parse(stdin.readLineSync()!);
        if (indexToUpdate != null) {
          print('Enter new description: ');
          String? newDescription = stdin.readLineSync();
          print('Enter new due date (YYYY-MM-DD: ');
          String? newDueDateString = stdin.readLineSync();
          DateTime? newDueDate =
              newDueDateString != null && newDueDateString.isNotEmpty
                  ? DateTime.tryParse(newDueDateString)
                  : null;
          print('Is the task completed? (true/false): ');
          String? completedString = stdin.readLineSync();
          bool? isCompleted =
              completedString != null
                  ? completedString.toLowerCase() == 'true'
                  : null;

          todoList.updateTask(
            indexToUpdate,
            description: newDescription,
            dueDate: newDueDate,
            isCompleted: isCompleted,
          );
        }
        break;

      case '4':
        todoList.displayTasks();
        break;

      case '5':
        print('Exiting the program.');
        return;

      default:
        print('Invalid option, please try again.');
    }
  }
}

class Item {
  String description;
  DateTime dueDate;
  bool isCompleted;

  Item({
    required this.description,
    required this.dueDate,
    this.isCompleted = false,
  });
}

class TodoList {
  List<Item> items = [];

  void addTask(String description, DateTime dueDate) {
    items.add(Item(description: description, dueDate: dueDate));
    print('Task added: $description');
  }

  bool removeTask(int index) {
    if (index >= 0 && index < items.length) {
      print('Task removed: ${items[index].description}');
      items.removeAt(index);
      return true;
    } else {
      print('Invalid task index.');
      return false;
    }
  }

  void updateTask(
    int index, {
    String? description,
    DateTime? dueDate,
    bool? isCompleted,
  }) {
    if (index >= 0 && index < items.length) {
      if (description != null) {
        items[index].description = description;
      }
      if (dueDate != null) {
        items[index].dueDate = dueDate;
      }
      if (isCompleted != null) {
        items[index].isCompleted = isCompleted;
        print('Task updated: ${items[index]}');
      }
    } else {
      print('Invalid task index.');
    }
  }

  void displayTasks() {
    if (items.isEmpty) {
      print('No tasks in list.');
    } else {
      print('To-Do List:');
      for (var item in items) {
        print('$item');
      }
    }
  }
}
