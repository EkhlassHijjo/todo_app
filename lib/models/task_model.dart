class TaskModel {
  String text;
  bool isDone;

  TaskModel({required this.text, this.isDone = false});

  void doneChange() {
    isDone = !isDone;
  }
}
