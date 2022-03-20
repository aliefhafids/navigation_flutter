import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({
    Key ? key,
    required this.todos
  }): super(key: key);

  final List < Todo > todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

final todos = List.generate(
  20,
  (i) => Todo(
    'List $i',
    'A description of what needs to be done for List $i',
  ),
);

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key ? key,
    required this.todo
  }): super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
          child: Text(todo.description),
      ),
    );
  }
}