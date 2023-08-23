import 'package:flutter/material.dart';
import 'package:taska/screens/tasks_home.dart';

import '../modules/tasks_list.dart';
import '../widgets/menu_and_avatar.dart';
import '../widgets/top_search_bar.dart';

class TasksBody extends StatefulWidget {
  final TodosDemo? todosDemo;
  final Size size;


  const TasksBody({super.key, this.todosDemo, required this.size});

  @override
  State<TasksBody> createState() => _TasksBodyState();
}

class _TasksBodyState extends State<TasksBody> {


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          const MenuAndAvatar(),
          const TopSearchBar(),
          const SizedBox(
            height: 8,
          ),
          TasksList(size: size),
          const SizedBox(),
        ],
      ),
    );
  }
}


