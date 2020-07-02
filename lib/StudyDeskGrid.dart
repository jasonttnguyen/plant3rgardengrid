import 'package:flutter/material.dart';

class StudyDeskGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Study Desk Garden';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return Center(
              child: Text(
                'Plant $index',
              ),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(
            Icons.add_circle,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
