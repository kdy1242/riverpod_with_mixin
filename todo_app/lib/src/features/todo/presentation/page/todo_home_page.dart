import 'package:flutter/material.dart';
import 'package:todo_app/core/enum/menu_type.dart';
import 'package:todo_app/src/features/todo/presentation/mixin/todo_home_event.dart';
import 'package:todo_app/src/features/todo/presentation/widget/filter_menu_card.dart';

class TodoHomePage extends StatelessWidget with TodoHomeEvent {
  const TodoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('todo'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey[100],
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 2 / 1,
        ),
        itemCount: TodoFilter.values.length,
        itemBuilder: (context, index) => FilterMenuCard(
          title: TodoFilter.values[index].title,
          icon: TodoFilter.values[index].icon,
          iconBackgroundColor: TodoFilter.values[index].color,
          count: 5,
          onTap: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        onPressed: () => showRegisterTodoBottomSheet(context),
        label: const Row(
          children: [
            Icon(Icons.add),
            SizedBox(width: 12),
            Text(
              'add',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}