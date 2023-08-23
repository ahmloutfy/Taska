import 'package:flutter/material.dart';
import 'package:taska/widgets/empty_field_alert.dart';
import 'modules/tasks.dart';

final TextEditingController todoTextController = TextEditingController();

final TextEditingController editTodoTextController = TextEditingController();

final FocusNode taskFocusNode = FocusNode();

String todoText = todoTextController.text;


void addTodo(BuildContext context) {

  if (todoText.isEmpty) {
    showAlertDialog(context);

    return;
  }

  if (editingIndex == -1) {
    listOfTasks.add(
      Tasks(nameOfTask: todoText),
    );
  } else {
    listOfTasks[editingIndex].nameOfTask = todoText;
    editingIndex = -1;
  }
  todoTextController.clear();
  taskFocusNode.unfocus();
}

void editTodo(int index) {
  taskFocusNode.requestFocus();

  editingIndex = index;
  todoText = listOfTasks[index].nameOfTask!;

}

void deleteTodo(int index) {
  listOfTasks.removeAt(index);
}

int editingIndex = -1;