import 'package:flutter/material.dart';

class KeyboardChangeCausingOverflowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Text('Keyboard overflow')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Center(
                child: CircleAvatar(
                  child: Icon(Icons.account_box),
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: <Widget>[
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(labelText: 'First Name'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
