import 'package:flutter/material.dart';

class CustomGridInput extends StatefulWidget {
  @override
  _CustomGridInputState createState() => _CustomGridInputState();
}

class _CustomGridInputState extends State<CustomGridInput> {
  var _textwidthController = TextEditingController();
  var _textlengthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Custom Garden"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text('What is the Width of your Garden in feet?'),
            ),
          ),
          ListTile(
            title: TextFormField(
              textAlign: TextAlign.center,
              decoration:
                  InputDecoration(labelText: 'Enter numerical width here'),
              controller: _textwidthController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 40),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('What is the Length of your Garden in feet?'),
            ),
          ),
          ListTile(
            title: TextFormField(
              textAlign: TextAlign.center,
              decoration:
                  InputDecoration(labelText: 'Enter numerical length here'),
              controller: _textlengthController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          ListTile(
            title: RaisedButton(
              child: Text("Next"),
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => CustomGridOutput(
                      length: _textwidthController.text,
                      width: _textlengthController.text),
                );
                Navigator.of(context).push(route);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomGridOutput extends StatefulWidget {
  final String length;
  final String width;

  CustomGridOutput({Key key, this.length, this.width}) : super(key: key);

  @override
  _CustomGridOutputState createState() => _CustomGridOutputState();
}

class _CustomGridOutputState extends State<CustomGridOutput> {
  @override
  Widget build(BuildContext context) {
    var length = int.parse("${widget.length}");
    var width = int.parse("${widget.width}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Custom Garden"),
      ),
      body: GridView.count(
        crossAxisCount: length,
        children: List.generate(
          length * width,
          (index) {
            return Center(
              child: Text('Plant $index'),
            );
          },
        ),
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
    );
  }
}
