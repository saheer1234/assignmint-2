import 'package:app1/screeens/add_new_todo_screen.dart';
import 'package:app1/screeens/update_todo_screen.dart';
import 'package:flutter/material.dart';
import 'todo.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {

  final List<Todo> ListOfTodo = [];

  void _addTodo(Todo todo){
    ListOfTodo.add(todo);
    setState(() {});
  }

  void  _deleteTodo(int index){
    ListOfTodo.removeAt(index);
    setState(() {});
  }

  void _updateTodo(int index, Todo todo){
    ListOfTodo[index] = todo;
    setState(() {});
  }

  void _updateTodoStatus(int index, TodoStatus status){
    ListOfTodo[index].status = status;
    Navigator.pop(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Visibility(
        visible: ListOfTodo.isNotEmpty,
        replacement: Center(
          child: Text('Empty List'),
        ),
        child: ListView.builder(
          itemCount: ListOfTodo.length,
            itemBuilder: (context, index){
            Todo todo = ListOfTodo[index];
            return ListTile(
              title: Text(todo.title),
              subtitle: Text(todo.description),
              leading: Text(todo.status.name),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        _deleteTodo(index);
                      },
                      icon: Icon(Icons.delete)
                  ),
                    IconButton(
                      onPressed: () => _showChangeStatusDialog(index),
                      icon: Icon(Icons.edit
                      )
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UpdateTodoScreen(
                          todo: todo,
                          onUpdateTodo: (Todo updatedTodo) {
                            _updateTodo(index, updatedTodo);
                          }
                        )
                )
                );
              },
            );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        Todo? todo = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const AddNewTodoScreen(),
        ),
        );
        if (todo != null) {
          _addTodo(todo);
        }
      },
      child: const Icon(Icons.add),
      ),
    );
  }

  void _showChangeStatusDialog(int index){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text('Change Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Idle'),
              onTap: () {
                _updateTodoStatus(index, TodoStatus.idle);
              },
            ),
            Divider(),
            ListTile(
              title: const Text('In progress'),
              onTap: (){
                _updateTodoStatus(index, TodoStatus.inprogress);
              },
            ),
            Divider(),
            ListTile(
              title: const Text('Done'),
              onTap: (){
                _updateTodoStatus(index, TodoStatus.done);
              },
            )
          ],
        ),
      );
    }
    );
  }
}
