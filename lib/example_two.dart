import 'package:flutter/material.dart';

class ExampleTwo extends StatefulWidget {
  ExampleTwo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ExampleTwoState createState() => new _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildMainContent(),
    );
  }

  _buildMainContent() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 256.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Title'),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
          ]),
        )
      ],
    );
  }

  Widget _buildListItem() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'List header',
              style: Theme.of(context).textTheme.body2,
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.only(top: 8.0),
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
    );
  }
}
