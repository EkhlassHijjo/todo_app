import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> tasks = [
    TaskModel(text: 'Go to Gym'),
    TaskModel(text: 'Work Done'),
    TaskModel(text: 'Go Shopping'),
    TaskModel(text: 'Go to Gym again'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(TaskModel(text: newTaskTitle));
    notifyListeners(); // عشان يسمع بتحديث
  }

  void updataTask(TaskModel model) {
    model.doneChange();
    notifyListeners(); // تحديث
  }

  void deleteTask(TaskModel model) {
    tasks.remove(model);
    notifyListeners();
  }
}
