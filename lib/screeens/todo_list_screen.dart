import 'package:app1/screeens/add_new_todo_screen.dart';
import 'package:app1/screeens/update_todo_screen.dart';
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
          return ListTile(
            title: const Text('Title of Todo'),
            subtitle: const Text('description'),
            leading: const Text('status'),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                IconButton(
                    onPressed: _showChangeStatusDialog,
                    icon: Icon(Icons.edit
                    )
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UpdateTodoScreen()
              )
              );
            },
          );
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const AddNewTodoScreen(),
        ),
        );
      },
      child: const Icon(Icons.add),
      ),
    );
  }

  void _showChangeStatusDialog(){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text('Change Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Idle'),
            ),
            Divider(),
            ListTile(
              title: Text('In progress'),
            ),
            Divider(),
            ListTile(
              title: Text('Done'),
            )
          ],
        ),
      );
    }
    );
  }
}
