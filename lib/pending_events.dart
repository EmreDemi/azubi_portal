// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PendingEvents extends StatelessWidget {
  final String title;
  final bool done;
  final Function remove;
  final Function toggleDone;

  const PendingEvents(this.title, this.done, this.remove, this.toggleDone);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
          Border.all(
            color: Colors.grey,
            width: 2
          )
      ),
      padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
        leading: Checkbox(
          value: done,
          onChanged: (value) => toggleDone(),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () => remove(),
        ),
      ),
    );
  }
}
