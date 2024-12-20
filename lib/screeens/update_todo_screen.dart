import 'package:flutter/material.dart';

class UpdateTodoScreen extends StatefulWidget {
  const UpdateTodoScreen({super.key});

  @override
  State<UpdateTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<UpdateTodoScreen> {

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update todo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Write your todo title'
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter your title';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 11),
                TextFormField(
                  controller: _descriptionTEController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Write your description here'
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter your description';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 29),
                ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {

                      }
                    },
                    child: Text('Add'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
