import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_point/widgets/todo.dart';

import '../../providers/todos_provider.dart';
import 'add_checklist.dart';

class ChecklistScreen extends StatelessWidget {
  const ChecklistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context).todos;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Notes'),
      ),
      body: ListView.separated(
        itemCount: todos.length,
        itemBuilder: (context, index) => TodoWidget(
          title: todos[index].title,
          description: todos[index].description,
          date: todos[index].date,
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return AddChecklist();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
