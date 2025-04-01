import 'package:flutter/material.dart';
import 'package:flutter_todolist/widgets/add_form.dart';
import 'package:flutter_todolist/widgets/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    print(items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TodoList")),

      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AddForm(
              onAdd: (value) {
                items.add(value);
                setState(() {});
              },
            ),
            Expanded(child: TodoList(items: items)),
          ],
        ),
      ),
    );
  }
}
