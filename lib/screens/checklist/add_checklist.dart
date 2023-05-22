// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_point/models/todo.dart';
import 'package:uuid/uuid.dart';

import '../../providers/todos_provider.dart';

class AddChecklist extends StatelessWidget {
  AddChecklist({super.key});
  DateTime date = DateTime.now();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  String generateID() {
    var uuid = Uuid();
    return uuid.v4();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Add Checklist'),
      ),
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
            controller: descriptionController,
            maxLines: 3,
            decoration: InputDecoration(
              labelText: 'Description',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date.toString().substring(0, 16)),
              IconButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2050),
                  ).then((value) {
                    date = value!.toString().substring(0, 16) as DateTime;
                  });
                },
                icon: const Icon(Icons.calendar_today),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Provider.of<TodoProvider>(context, listen: false).addTodo(
            Todo(
              id: generateID(),
              title: titleController.text,
              description: descriptionController.text,
              date: date,
            ),
          );
          Navigator.pop(context);
        },
        label: const Text('Done'),
      ),
    );
  }
}
