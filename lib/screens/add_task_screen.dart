import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class AddtaskScreen extends StatelessWidget {
  String? newValue;
  final Function? addTaskCallBack;
  AddtaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newValue = value;
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                print(newValue);
                // addTaskCallBack!(newValue);
                Provider.of<TaskData>(context , listen:  false).addTask(newValue!);
                Navigator.pop(context);
              },
              child: Text('Add'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400],
                primary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
