// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {

  Widget getForms(List<String> forms) {
    return Row(children: forms.map((item) => Text(item)).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Formulare"),
        ),
        body: Column(
        children: <Widget>[
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              crossAxisCount: 2,
              childAspectRatio: .85,
              crossAxisSpacing: 20,
              children: <Widget>[
                FormCard(
                    "Allgemein",
                    Icons.account_balance,
                    (){}
                ),
                FormCard(
                    "Schule",
                    Icons.account_balance,
                        (){}
                ),
                FormCard(
                    "Abteilungsleitung",
                    Icons.account_balance,
                        (){}
                ),
                FormCard(
                    "Formular XY",
                    Icons.account_balance,
                        (){}
                ),
                FormCard(
                    "Formular XYZ",
                    Icons.account_balance,
                        (){}
                ),
            ],
          ),

        )
    ]
    ));
  }
}

class FormCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback press;
  const FormCard(this.title, this.icon, this.press);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
            )
          ]
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget> [
                  Spacer(),
                  Icon(icon, size: 100),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                  )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
