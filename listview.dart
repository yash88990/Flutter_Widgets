import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All ListView Examples")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Simple ListView
            Container(
              height: 200,
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  Text("Simple Item 1"),
                  Text("Simple Item 2"),
                  Container(height: 60, color: Colors.red),
                ],
              ),
            ),

            // 2. Builder ListView
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, i) => ListTile(title: Text("Builder $i")),
              ),
            ),

            // 3. Separated ListView
            Container(
              height: 200,
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (_, __) => Divider(),
                itemBuilder: (_, i) => ListTile(title: Text("Separated $i")),
              ),
            ),

            // 4. Horizontal ListView
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (_, i) => Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Center(child: Text("Box $i")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
