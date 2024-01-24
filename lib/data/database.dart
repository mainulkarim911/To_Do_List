import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if opening this app first time ever
  void createInitialData() {
    toDoList = [
      ["Task_1", false],
      ["Task_2", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = ToDoDataBase()._myBox.get('TODOLIST');
  }

  // udate the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
