import 'package:flutter/material.dart';
import 'package:todolist/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controler;
  VoidCallback onSave;
  VoidCallback onCancle;
 DialogBox({super.key, required this.controler, required this.onSave, required this.onCancle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(onPressed: onSave, text: "Save"),
                const SizedBox(width: 8),
                MyButton(onPressed: onCancle, text: "Cancel"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
