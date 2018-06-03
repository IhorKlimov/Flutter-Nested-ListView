import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  final String title;
  ExampleOne({Key key, this.title}) : super(key: key);

  @override
  _ExampleOneState createState() => new _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Header for list $index',
                  style: Theme.of(context).textTheme.body2,
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'Nested list item $index',
                        style: Theme.of(context).textTheme.body1,
                      ),
                    );
                  },
                  itemCount: 4,
                  shrinkWrap: true, // todo comment this out and check the result
                  physics: ClampingScrollPhysics(), // todo comment this out and check the result
                ),
              ],
            ),
          );
        },
        itemCount: 9,
      ),
    );
  }
}
