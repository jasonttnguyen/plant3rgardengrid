import 'package:flutter/material.dart';
import 'package:plant3r_app/WindowSillGrid.dart';
import 'package:plant3r_app/PoolTableGrid.dart';
import 'package:plant3r_app/StudyDeskGrid.dart';
import 'package:plant3r_app/SmallSwimmingPoolGrid.dart';
import 'package:plant3r_app/CustomGrid.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Plant3r Garden Size',
      home: GardenSizePage(),
    ),
  );
}

class GardenSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Plant3r'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(40),
            child: Text(
              'What is the approximate size of your garden?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          RaisedButton(
              child: Text('Window Sill sized'),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WindowSillGrid()));
              }),
          RaisedButton(
              child: Text('Study Desk sized'),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudyDeskGrid()));
              }),
          RaisedButton(
              child: Text('Pool Table sized'),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PoolTableGrid()));
              }),
          RaisedButton(
              child: Text('Small Swimming Pool sized'),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SmallSwimmingPoolGrid()));
              }),
          RaisedButton(
              child: Text('Custom Sized Garden'),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CustomGridInput()));
              })
        ],
      ),
    );
  }
}
