
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_todo/Screens/todo_item.dart';

import 'DialogBox.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => MyHomePageState();

}

class MyHomePageState extends State<HomePage>{
  final TextEditingController controller = TextEditingController();

  void Save(){
    setState(() {
      TodoList.add([controller.text, false]);
      controller.clear();
      Navigator.of(context).pop();
    });
  }

  void onPressed(){
    setState(() {
      showDialog(context: context, builder:(context){
        return DialogBox(
          Controller: controller,
          onSave: ()=> Save(),
          onCancel: ()=> Navigator.of(context).pop(),

        );


      });
    });
  }
  List TodoList = [["Task 1", false], ["Task 2", false], ["Task 3", false], ["Task 4", false]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade200,
      appBar: AppBar(
        title: Text("TODO", style: TextStyle(color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
        centerTitle: true,
        elevation: 50,
      ),
      body: ListView(
        children: TodoList.map((e) => TodoItem(isChecked: e[1], TodoText: e[0], onChanged: (value) => setState(() => e[1] = value!))).toList()
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: ()=>onPressed(),
        child: Icon(Icons.add),
      ),
    );

  }
  
}