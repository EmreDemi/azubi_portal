// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'pending_events.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Erwin'),
            accountEmail: Text('erwin@email.de'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp-9J2C1KxYHLWmHz4U7mzEUSloHni3XiXJy0xStGyZ6LwCgasfI1LfdGga7tkOZL8scs&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://media.istockphoto.com/photos/blue-abstract-background-or-texture-picture-id1138395421?k=20&m=1138395421&s=612x612&w=0&h=FPYxPgxJBNucc79Z3fxAehsW6gvjw5jP17CJMsBRjGM=',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            title: Text(
              'Aufgaben',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            trailing: Badge(
              padding: EdgeInsets.all(8),
              badgeContent: Text(
                '8',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Icon(Icons.fact_check_outlined, size: 40),
            ),
            onTap: () => print('aufgaben'),
          ),
          ListTile(
            trailing: Icon(Icons.calendar_today, size: 40),
            title: Text(
              'Kalender',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => print('kal'),
          ),
          ListTile(
            trailing: Icon(Icons.description_outlined, size: 40),
            title: Text(
              'Formulare',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push<Widget>(
              context,
              MaterialPageRoute<Widget>(
                builder: (BuildContext context)=>
                  PendingEvents(),
                )
              );
            }
              ),
              Divider(),
              ListTile(
              trailing: Icon(Icons.person, size: 40),
              title: Text(
              'wichtige Ansprechpartner',
              style: TextStyle(fontSize: 18),
              ),
              onTap: () => print('ansp'),
              ),
              ListTile(
              trailing: Icon(Icons.settings, size: 40),
              title: Text(
              'persönliche Einstellungen',
              style: TextStyle(fontSize: 18),
              ),
              onTap: () => print
            ('einst'),
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.exit_to_app, size: 40),
            title: Text(
              'Exit',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

