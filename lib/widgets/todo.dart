// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  String title;
  String description;
  DateTime date;
  TodoWidget({super.key, required this.title, required this.description, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date.toString().substring(0, 16),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              description,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
