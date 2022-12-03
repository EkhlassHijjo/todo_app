import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';
import 'package:todaydo_app/screens/add_task_screen.dart';
import 'package:todaydo_app/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);
  // List<TaskModel> tasks = [ // هعمله قص لانو خلص بدي ابطل ارفع عن طريق الكونستركتر بدي عن طريق بروفايدر
  //   TaskModel(text: 'Go to Gym'),
  //   TaskModel(text: 'Work Done'),
  //   TaskModel(text: 'Go Shopping'),
  //   TaskModel(text: 'Go to Gym again'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.indigo[400],
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddtaskScreen(() {
                  print('');
                  // setState(() {
                  //    tasks.add(TaskModel(text: newValue));
                  //   Navigator.pop(context);
                   
                  // });
                  // tasks.add(TaskModel(text: newValue));
                }),
              ),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Colors.teal[400],
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          top: 60,
          start: 20,
          bottom: 40,
          end: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  // shape: BoxShape.circle
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
