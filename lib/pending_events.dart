// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PendingEvents extends StatelessWidget {
  final String title;
  final bool done;
  final Function remove;
  final Function toggleDone;

  const PendingEvents(this.title, this.done, this.remove, this.toggleDone);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.grey],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        secondaryActions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 7),
            child: Container(
              width: 25,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => remove(),
                ),
            ),
          ),
        ],
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.grey],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              ),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            leading: Checkbox(
              activeColor: Colors.lightGreen,
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
          ),
        ),
      ),
    );
  }
}
