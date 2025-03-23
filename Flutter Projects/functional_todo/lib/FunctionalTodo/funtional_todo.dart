import 'package:flutter/material.dart';
import 'package:functional_todo/FunctionalTodo/model.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../provider/provider.dart';

class FunctionalTodo extends StatefulWidget {
  const FunctionalTodo({super.key});

  @override
  State<FunctionalTodo> createState() => _FunctionalTodoState();
}

class _FunctionalTodoState extends State<FunctionalTodo> {
  final _taskController = TextEditingController();
  @override
  void dispose() {
    _taskController;
    super.dispose();
  }

  Future<void> _showDialg() async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Add ToDo Task'),
              content: TextField(
                
                controller: _taskController,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                        
                    hintText: 'Enter Task'),
              ),
              actions: [
                TextButton(
                  child: const Text('Cencel'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade300,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      if (_taskController.text.isEmpty) {
                        return;
                      }
                      context.read<TodoProvider>().addTask(TodoModel(
                          task: _taskController.text,
                          isComplete: false,
                          date: DateFormat.jm().format(DateTime.now())));
                      _taskController.clear();
                      Navigator.pop(context);
                    },
                    child: const Text('Save'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context);
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: const Text(
          'TO Do List',
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF224CB6),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(blurRadius: 4, color: Colors.black12),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Active',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          provider.activeTask.toString(),
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: VerticalDivider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 5,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Complete',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          provider.completedTask.toString(),
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: Consumer<TodoProvider>(
              builder: (context, todoProvider, child) {
                return ListView.builder(
                    itemCount: todoProvider.allTodoList.length,
                    itemBuilder: (context, index) {
                      var todo = todoProvider.allTodoList[index];
                      return Card(
                        child: ListTile(
                            leading: Checkbox(
                              shape: const CircleBorder(),
                              onChanged: (value) {
                                todoProvider.taskStatusChange(todo);
                              },
                              value: todo.isComplete,
                            ),
                            title: Text(
                              todo.task,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  decoration: todo.isComplete == true
                                      ? TextDecoration.lineThrough
                                      : null),
                            ),
                            subtitle: Text(todo.date.toString()),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () => todoProvider.deleteTask(todo),
                            )),
                      );
                    });
              },
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showDialg(),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
