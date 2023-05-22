import 'package:flutter/material.dart';

import '../models/todo.dart';

class TodoProvider with ChangeNotifier {
  final List<Todo> _todos = [
    Todo(
      id: 't1',
      title: 'Buy a ticket',
      description: 'Buy a ticket to travel',
      date: DateTime.now(),
    ),
    Todo(
      id: 't2',
      title: 'Book a hotel',
      description: 'Book a hotel to stay',
      date: DateTime.now(),
    ),
    Todo(
      id: 't3',
      title: 'Pack your bags',
      description: 'Pack your bags to travel',
      date: DateTime.now(),
    ),
  ];
  List<Todo> get todos {
    return [..._todos];
  }

  addTodo(Todo item) {
    // add todo to _todos
    _todos.add(item);
    notifyListeners();
    // ...
  }
}
