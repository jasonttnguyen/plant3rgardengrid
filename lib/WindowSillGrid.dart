import 'package:flutter/material.dart';

class WindowSillGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Window Sill Garden';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
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
