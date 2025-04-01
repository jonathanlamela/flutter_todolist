import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final List<String> items;

  const TodoList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return SizedBox(height: 50, child: Text(items[index]));
      },
    );
  }
}
