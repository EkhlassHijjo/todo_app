import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';
import 'package:todaydo_app/models/task_model.dart';
import 'package:todaydo_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
//   final List<TaskModel> tasks;
//   TaskList(this.tasks);

//   @override
//   State<TaskList> createState() => _TaskListState();
// }

// class _TaskListState extends State<TaskList> {
  // List<TaskModel> tasks = [ // رفعته لفوق
  //   TaskModel(text: 'Go to Gym'),
  //   TaskModel(text: 'Work Done'),
  //   TaskModel(text: 'Go Shopping'),
  //   TaskModel(text: 'Go to Gym again'),
  // ];
  // List<TaskModel> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) =>
            //  buildTaskTile(tasks[index]),
            TaskTile(
          // taskTitle: widget.tasks[index].text,
          // taskTitle: Provider.of<TaskData>(context).tasks[index].text,
          taskTitle: taskData.tasks[index].text,
          isCheckBox: taskData.tasks[index].isDone,
          checkBoxChange: (value) {
            taskData.updataTask(taskData.tasks[index]);
            //هنشأ دالة في كلاس الخاص بالبروفايدر  واستدعيها هان بس
            // setState(() {
            //   widget.tasks[index].doneChange();
            // });
          },
          taskDeleted: () {
            taskData.deleteTask(taskData.tasks[index]);
          },
        ),
        itemCount: taskData.tasks.length,
      );
    });
  }
}

// Widget buildTaskTile(TaskModel model) => ListTile(
//       title: Text(model.text),
//       trailing: Checkbox(
//         value: model.isDone,
//         onChanged: (value) {

//           model.doneChange();
//         },
//       ),
//     );

//داخل list view لحالها
// children: [
//         TaskTile(
//           isCheckBox: tasks[0].isDone,
//           taskTitle: tasks[0].text,
//         ),
//         TaskTile(
//           isCheckBox: tasks[1].isDone,
//           taskTitle: tasks[1].text,
//         ),
//         TaskTile(
//           isCheckBox: tasks[2].isDone,
//           taskTitle: tasks[2].text,
//         ),
//       ],
