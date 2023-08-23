import 'package:flutter/material.dart';
import 'package:taska/screens/tasks_body.dart';
import '../constants.dart';
import '../widgets/floating_form.dart';

class TodosDemo extends StatefulWidget {
  const TodosDemo({Key? key}) : super(key: key);


  @override
  State<TodosDemo> createState() => _TodosDemoState();
}

class _TodosDemoState extends State<TodosDemo> {



  @override
  void dispose() {
    todoTextController.dispose();
    editTodoTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return SafeArea(
      child: Scaffold(
        floatingActionButton: Row(
          children: [
            FloatingForm(size: size, theTaskFocusNode: taskFocusNode, theTodoTextController: todoTextController),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                addTodo(context);
              },
              shape: const BeveledRectangleBorder(),
              backgroundColor: const Color(0xFF5F56E8),
              child: Container(
                padding: const EdgeInsets.only(bottom: 3, right: 2),
                alignment: Alignment.center,
                child: (editingIndex != -1)
                    ? const Icon(
                  Icons.check,
                  size: 40,
                  color: Colors.white,
                )
                    : const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFEDEEF3),
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: TasksBody(size: size),
        ),
      ),
    );
  }
}








