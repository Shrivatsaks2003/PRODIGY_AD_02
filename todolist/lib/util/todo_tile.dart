import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class todo_tile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
  Function(BuildContext?) deleteFunction;
  todo_tile({
    super.key,
    required this.onChanged,
    required this.taskcompleted,
    required this.taskname,
    required this.deleteFunction,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: Row(
            children: [
              Checkbox(
                value: taskcompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),

              Text(
                taskname,
                style: TextStyle(
                  decoration:
                      taskcompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.amber.shade500,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
