// Example from: https://stackoverflow.com/questions/50203940/cannot-center-text-widget-inside-a-column/50240424

import 'package:flutter/material.dart';

class UnableToCenterTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unable to center widget'),
      ),
      body: ListView(
        children: [
          Row(
            // Fix is by uncommenting line below:
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('I want this to be centered', textAlign: TextAlign.center,)
            ],
          ),
        ],
      ),
    );
  }
}
