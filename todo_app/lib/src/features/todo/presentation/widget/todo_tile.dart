import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.todoText,
    required this.date,
    required this.isCompleted,
    required this.onCheck,
    required this.onEdit,
    required this.onDelete,
  });

  final String todoText;
  final DateTime date;
  final bool isCompleted;
  final Function(bool) onCheck;
  final Function() onEdit;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) => onEdit(),
            backgroundColor: CupertinoColors.systemGrey3,
            foregroundColor: Colors.white,
            icon: CupertinoIcons.pen,
            label: 'edit',
          ),
          SlidableAction(
            onPressed: (_) => onDelete(),
            backgroundColor: CupertinoColors.destructiveRed,
            foregroundColor: Colors.white,
            icon: CupertinoIcons.trash,
            label: 'delete',
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          child: CupertinoListTile(
            leading: CupertinoCheckbox(
              value: isCompleted,
              onChanged: (value) {
                if (value != null) {
                  onCheck(value);
                }
              },
            ),
            title: Text(todoText),
            subtitle: Text(
              DateFormat('yyyy. M. d - hh:mm').format(date),
            ),
          ),
        ),
      ),
    );
  }
}
