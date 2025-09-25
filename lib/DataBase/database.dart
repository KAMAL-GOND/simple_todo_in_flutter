

import 'package:hive/hive.dart';

class TodoDataBase{
  List TodoList = [];

  final _myBox = Hive.box("myBox");

  void createData(){
    TodoList =[
      ["Task 1", false],
    ];

  }

  void loadData(){
    TodoList = _myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST", TodoList);
  }


}