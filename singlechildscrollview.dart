import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SingleChildDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SingleChildScrollView – All Examples")),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Basic Example", style: TextStyle(fontSize: 20)),
            Container(height: 200, color: Colors.red),
            SizedBox(height: 20),

            Text("Horizontal Scroll", style: TextStyle(fontSize: 20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  5,
                  (i) => Container(
                    width: 150,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    color: Colors.blue,
                    child: Center(child: Text("Box $i")),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Text("Reverse Scroll", style: TextStyle(fontSize: 20)),
            SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  Text("Top"),
                  SizedBox(height: 200),
                  Text("Bottom (Start Point)"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
