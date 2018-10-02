import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Shrine"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu,
            semanticLabel: 'menu'),
            onPressed: ()=>print('Menu Bar pressed')),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search,
              semanticLabel: 'Search'),
              onPressed: ()=>print('search')),
          IconButton(
              icon: Icon(Icons.tune,
              semanticLabel: 'Fiter Button'),
              onPressed: ()=>print('filter'))
        ],

      ),
      body:GridView.count(
          crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0/9.0,
        children: _buildGridCards(20)
      )

    );
  }
  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
        count,
            (int index) =>
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 15.0 / 11.0,
                    child: Image.asset('images/logo.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Title'),
                        SizedBox(height: 8.0),
                        Text('Secondary Text')
                      ],
                    ),
                  )
                ],
              ),

            )
    );
    return cards;

  }
}