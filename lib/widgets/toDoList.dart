import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.grey[300],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '05/10/2022',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            '$title',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
