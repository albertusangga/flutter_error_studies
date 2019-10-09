// Example from: https://stackoverflow.com/questions/50203940/cannot-center-text-widget-inside-a-column/50240424

import 'package:flutter/material.dart';

class UnableToCenterTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget card = new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: const Icon(Icons.album),
            title: const Text('The Enchanted Nightingale'),
            subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
        ],
      ),
    );
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: new Color(0xFF26C6DA),
        ),
        body: new Column(
          children: <Widget>[
            card,
            card,
            card,
            card,
            card,
            card,
            card,
            card,
            card,
          ],
        )
    );
  }
}
