import 'package:flutter/material.dart';
import 'dart:math';

class PersonDetailCard extends StatelessWidget {
  const PersonDetailCard({this.name});

  static Random randomizer = Random();

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text(name[0]),
              backgroundColor: Color.fromARGB(
                  randomizer.nextInt(255),
                  randomizer.nextInt(255),
                  randomizer.nextInt(255),
                  randomizer.nextInt(255)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.0),
              child: Text(name),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollableSocialCircleSection extends StatelessWidget {
  ScrollableSocialCircleSection(
      {this.socialCircleName, this.names, this.height});

  final String socialCircleName;
  final List<String> names;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            socialCircleName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255),
              ),
            ),
          ),
        ),
        Container(
          // Fix is by uncommenting next line (setting height constraint to the ListView)
          // height: height,
          child: ListView(
            children: new List<Widget>.generate(
                10, (_) => PersonDetailCard(name: "Albertus")),
          ),
        ),
      ]),
    );
  }
}

class NestedListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nested List View'),
      ),
      body: ListView(
        children: <Widget>[
          ScrollableSocialCircleSection(
              socialCircleName: "Families", height: 300),
          ScrollableSocialCircleSection(
              socialCircleName: "Close Friends", height: 400),
          ScrollableSocialCircleSection(
              socialCircleName: "Friends", height: 500),
        ],
      ),
    );
  }
}
