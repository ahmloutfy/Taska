import 'package:flutter/material.dart';
import 'package:taska/modules/tasks.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';

class TasksList extends StatefulWidget {
  final Size size;

  const TasksList({super.key, required this.size});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'All ToDos',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: widget.size.height / 1.5,
                child: ListView.builder(
                  itemCount: listOfTasks.length,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          fillColor: const MaterialStatePropertyAll(
                            Color(0xFF5F56E8),
                          ),
                          value: listOfTasks[index].isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              listOfTasks[index].isChecked = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            listOfTasks[index].nameOfTask!,
                            style: TextStyle(
                              decoration: listOfTasks[index]
                                  .isChecked
                                  ? TextDecoration.lineThrough
                                  : null,
                            ),
                          ),
                        ),
                        CustomButton(
                          margin: const EdgeInsets.only(right: 10),
                          icon: const Icon(Icons.edit),
                          buttonColor: const Color(0xFF5F56E8),
                          press: () {
                            setState(() {
                              editTodo(index);

                            });
                          },
                        ),
                        CustomButton(
                          margin: const EdgeInsets.only(right: 20),
                          icon: const Icon(Icons.delete),
                          buttonColor: Colors.red,
                          press: () {
                            setState(() {
                              deleteTodo(index);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}