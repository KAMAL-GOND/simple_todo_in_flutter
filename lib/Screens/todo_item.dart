
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget{
  final bool isChecked;
  final String TodoText;
  final void Function(bool?)? onChanged;

  TodoItem({super.key, required this.isChecked, required this.TodoText, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)

        ),
        child: Row(
          children: [
            Checkbox(value: isChecked, onChanged: onChanged),
            if(isChecked) Text(TodoText, style: TextStyle(decoration: TextDecoration.lineThrough) )
            else Text(TodoText)
          ]
        )
      ),
    );
  }
}