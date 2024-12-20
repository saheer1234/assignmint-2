import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: 3,
          itemBuilder: (context, index){
          return const ListTile(
            title: Text('Title of Todo'),
            subtitle: Text('description'),
            trailing: Text('status'),
          );
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
      child: const Icon(Icons.add),
      ),
    );
  }
}
