
class TodoModel {
  String task;
  bool isComplete;
  String date;

  TodoModel({required this.task, required this.isComplete, required this.date});

  void toggleTaskStatus() {
    isComplete = !isComplete;
  }
}
