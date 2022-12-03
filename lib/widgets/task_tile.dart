import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheckBox; //بمرر من خلال الكونستركتور
  final String taskTitle;
  final void Function(bool?)? checkBoxChange;
  final void Function()? taskDeleted;
  TaskTile({      // هي الكونستركتور
    required this.isCheckBox,
    required this.taskTitle,
    required this.checkBoxChange,
    required this.taskDeleted,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: taskDeleted,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isCheckBox ? TextDecoration.lineThrough : null,
        ),
      ),
      //  trailing: TaskCheckBox(), //  من غير تمرير
      trailing: Checkbox(
        value: isCheckBox,
        onChanged: checkBoxChange,
      ),
    );
  }
}

// TaskCheckBox(
//         isCheckBox,
//         (value) {
//           // setState(() {
//           //   isCheckBox = value!;
//           // });
//         },
//       ),

//مش هحتاجها خالص
// class TaskCheckBox extends StatelessWidget {
//   //  bool? checkBoxState;
//   // TaskCheckBox(this.checkBoxState); // من غير تمرير
//   final bool? checkBoxState;
//   final Function(bool?)? checkBoxChange;
//   TaskCheckBox(this.checkBoxState, this.checkBoxChange);
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       onChanged: checkBoxChange,
//     );
//   }
// }
