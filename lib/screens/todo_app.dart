import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providers/todo_provider.dart';

class TodoApp extends StatefulWidget {
  static const String routeName = '/todo';

  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context).todos;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Man'),
        backgroundColor: Colors.blueGrey.withOpacity(0.2),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter a todo',
              ),
            ),
            ElevatedButton(
              onPressed: _addTodo,
              child: const Text('Add Todo'),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.blueGrey.withOpacity(0.08),
                    title: Text(todos[index]),
                    trailing: IconButton(
                      onPressed: () {
                        context.read<TodoProvider>().deleteTodo(index);
                      },
                      icon: const Icon(Icons.delete_rounded),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addTodo() {
    final todo = _controller.text;
    if (todo.isNotEmpty) {
      context.read<TodoProvider>().addTodo(todo);
      _controller.clear();
    }
  }
}
