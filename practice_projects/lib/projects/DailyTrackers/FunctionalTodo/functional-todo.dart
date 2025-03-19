import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FunctionalTodo extends StatefulWidget {
  const FunctionalTodo({super.key});

  @override
  State<FunctionalTodo> createState() => _FunctionalTodoState();
}

class _FunctionalTodoState extends State<FunctionalTodo> {
  List<Map<String, dynamic>> tasks = [];
  bool showActiveTask = true;

  void showTaskDialog({int? index}) {
    TextEditingController taskController = TextEditingController(
      text: index != null ? tasks[index]['task'] : '',
    );
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(index != null ? 'Edit Task' : 'Add Task'),
              content: TextField(
                controller: taskController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Enter Task'),
              ),
              actions: [
                TextButton(
                  child: Text('Cencel'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade300,
                      foregroundColor: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      if (taskController.text.trim().isNotEmpty) {
                        if (index == null) {
                          addTask(taskController.text);
                        } else {
                          editTask(index, taskController.text);
                        }
                      }
                    },
                    child: Text('Save'))
              ],
            ));
  }

  void addTask(String task) {
    setState(() {
      tasks.add({
        "task": task,
        "completed": false,
      });
      Navigator.pop(context);
    });
  }

  void toggleTaskStatus(int index) {
    setState(() {
      tasks[index]["completed"] = !tasks[index]["completed"];
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void editTask(int index, String updateTask) {
    setState(() {
      tasks[index]['task'] = updateTask;
      Navigator.pop(context);
    });
  }

  int get activeTask => tasks.where((task) => !task["completed"]).length;
  int get completedTask => tasks.where((task) => task["completed"]).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Functional Todo'),
      ),
      backgroundColor: Colors.deepPurple.shade50,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
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
                        Text(
                          'Active',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          activeTask.toString(),
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: VerticalDivider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 5,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Complete',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          completedTask.toString(),
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) => Card(
                        child: ListTile(
                            leading: Checkbox(
                              shape: CircleBorder(),
                              onChanged: (value) => toggleTaskStatus(index),
                              value: tasks[index]['completed'],
                            ),
                            title: Text(
                              tasks[index]['task'],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  decoration: tasks[index]['completed']
                                      ? TextDecoration.lineThrough
                                      : null),
                            ),
                            subtitle:
                                Text(DateFormat.jm().format(DateTime.now())),
                            trailing: PopupMenuButton(
                              icon: Icon(Icons.more_vert),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: 'edit',
                                  child: Text('Edit'),
                                  onTap: () => showTaskDialog(index: index),
                                ),
                                PopupMenuItem(
                                  value: 'delete',
                                  child: Text('Delete'),
                                  onTap: () => deleteTask(index),
                                ),
                              ],
                            )),
                      )),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTaskDialog();
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
