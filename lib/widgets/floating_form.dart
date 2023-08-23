import 'package:flutter/material.dart';

class FloatingForm extends StatelessWidget {
  const FloatingForm({
    super.key,
    required this.size,
    required this.theTaskFocusNode,
    required this.theTodoTextController,
  });

  final Size size;
  final FocusNode theTaskFocusNode;
  final TextEditingController theTodoTextController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 25),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 35,
              offset: Offset(0, 5),
              color: Colors.black38,
            ),
          ],
        ),
        child: SizedBox(
          width: size.width / 1.7,
          child: TextFormField(
            focusNode: theTaskFocusNode,
            controller: theTodoTextController,
            decoration: InputDecoration(
              hintText: 'Add a new todo item',
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 17, horizontal: 20),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}