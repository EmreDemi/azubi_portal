import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              )
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.fact_check_outlined,
            size: 30),
            title: Text('Aufgaben'),
            onTap: () => print('aufgaben'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            )
            ,
          ),
          ListTile(
            leading: Icon(
                Icons.calendar_today,
                size: 30),
            title: Text('Kalender'),
            onTap: () => print('kal'),
          ),
          ListTile(
            leading: Icon(
                Icons.description_outlined,
                size: 30),
            title: Text('Formulare'),
            onTap: () => print('form'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
                Icons.person,
                size: 30),
            title: Text('wichtige Ansprechpartner'),
            onTap: () => print('ansp'),
          ),
          ListTile(
            leading: Icon(
                Icons.settings,
                size: 30),
            title: Text('persönliche Einstellungen'),
            onTap: () => print('einst'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
                Icons.exit_to_app,
                size: 30),
            title: Text('Exit'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

}