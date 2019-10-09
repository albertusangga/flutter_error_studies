import 'package:flutter/material.dart';

//
//class PlaygroundWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: Container(
//          child: Column(
//
//            children: <Widget>[
//              Text("Hello World!"),
//            ],
//          )
//        ),
//      ),
//    );
//  }
//}

class UnboundedWidthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[_buildTitle(), _buildInputFields()],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        children: <Widget>[
          Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            // textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildInputFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Login Label
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 20,
            right: 20,
          ),
          child: Text(
            "Login with Email",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        //Login Textfield
        Container(
          margin: EdgeInsets.only(
            top: 8,
            left: 20,
            right: 20,
          ),

          // Fix: Remove the Row Widget
          child: Row(
            children: <Widget>[
              TextField(),
            ],
          ),
        )
      ],
    );
  }
}
