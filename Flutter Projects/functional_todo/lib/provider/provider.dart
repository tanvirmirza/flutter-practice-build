import 'package:flutter/material.dart';
import '../FunctionalTodo/model.dart';

class TodoProvider extends ChangeNotifier {
  final List<TodoModel> _todoList = [];
  List<TodoModel> get allTodoList => _todoList;

  int get activeTask => allTodoList.where((task) => !task.isComplete).length;
  int get completedTask => allTodoList.where((task) => task.isComplete).length;

  void addTask(TodoModel todoModel) {
    _todoList.add(todoModel);
    notifyListeners();
  }

  void taskStatusChange(TodoModel todoModel) {
    int index = _todoList.indexOf(todoModel);
    _todoList[index].toggleTaskStatus();
    notifyListeners();
  }

  void deleteTask(TodoModel todoModel) {
    int index = _todoList.indexOf(todoModel);
    _todoList.removeAt(index);
    notifyListeners();
  }
}
