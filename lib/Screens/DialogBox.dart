import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget{
  final Controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const DialogBox({super.key, required this.Controller, required this.onSave, required this.onCancel});



  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      title: Text("Add Todo"),
      content: Container(
        height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: Controller ,
                decoration: InputDecoration(
                  hintText: "Add Todo",
                  border: OutlineInputBorder()

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: onSave, child: Text("Add")),
                  TextButton(onPressed: onCancel, child: Text("Cancel"))
                ]
              )
            ]
          ),
      ),

    )
    ;
  }}