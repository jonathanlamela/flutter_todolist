import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  final Function(String) onAdd;

  const AddForm({super.key, required this.onAdd});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final TextEditingController textEditingController = TextEditingController(
    text: "",
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Aggiungi elemento",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              TextFormField(controller: textEditingController),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      widget.onAdd(textEditingController.text);
                      textEditingController.text = "";
                      setState(() {});
                    },
                    child: Text("Aggiungi"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
