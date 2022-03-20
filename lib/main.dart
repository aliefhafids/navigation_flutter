import 'package:flutter/material.dart';
import 'screens/send_data_new_screen.dart';

void main() {
   runApp(
    MaterialApp(
      title: 'Passing Data',
      home: TodoScreen(
        todos: List.generate(
          20,
          (i) => Todo(
            'List $i',
            'A description of what needs to be done for List $i',
          ),
        ),
      ),
    ),
  );
}
