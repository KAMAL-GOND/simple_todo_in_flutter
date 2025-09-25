
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoItem extends StatelessWidget{
  final bool isChecked;
  final String TodoText;
  final void Function(bool?)? onChanged;
  final Function(BuildContext)? onPressed;

  TodoItem({super.key, required this.isChecked, required this.TodoText, required this.onChanged, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: onPressed,
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              borderRadius: BorderRadius.circular(15),
              icon: Icons.delete,

            )

          ],),

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
      ),
    );
  }
}