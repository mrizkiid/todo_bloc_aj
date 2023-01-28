import 'package:flutter/material.dart';
import 'package:todo_bloc_aj/models/task.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});
  List<Tasks> tasksList = [
    Tasks(title: 'tasks 1'),
    Tasks(title: 'tasks 2'),
    Tasks(title: 'tasks 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task App'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'Add Tasks',
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Center(child: Chip(label: Text('Tasks'))),
          Expanded(
            child: ListView.builder(
                itemCount: tasksList.length,
                itemBuilder: (context, index) {
                  Tasks tasksVar = tasksList[index];
                  return ListTile(
                    leading: Icon(Icons.star),
                    title: Text(tasksVar.title),
                    trailing: Checkbox(
                      value: tasksVar.isDone,
                      onChanged: (value) {},
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
