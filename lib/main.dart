// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pending_events.dart';
import 'forms/forms.dart';

void main() => runApp(MaterialApp(home: Dashboard()));

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Map<String, bool> pendingEvents = {
    'Termin 1': false,
    'Termin 2': false,
  };

  void pressed() {}

  void addItem(String item) {
    setState(() {
      pendingEvents[item] = false;
    });
    Navigator.of(context).pop();
  }

  void toggleDone(String key) {
    setState(() {
      pendingEvents.update(key, (bool done) => !done);
    });
  }

  void deleteItem(String key) {
    setState(() {
      pendingEvents.remove(key);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AzubiPortal"),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView.builder(
            itemCount: pendingEvents.length,
            itemBuilder: (content, i) {
              String key = pendingEvents.keys.elementAt(i);
              return PendingEvents(
                key,
                pendingEvents.values.elementAt(i),
                () => deleteItem(key),
                () => toggleDone(key),
              );
            },
          ))
        ]),
        floatingActionButton: FloatingActionButton(
          child: Text("Formulare"),
            onPressed: ()
    {
      Navigator.push(
        context,
        MaterialPageRoute<Widget>(
            builder: (BuildContext context) =>
                Forms()
        ),
      );
    }
        )
    );


  }
}
