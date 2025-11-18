import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  String dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Button Examples")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Elevated Button
            ElevatedButton(
              onPressed: () {},
              child: Text("ElevatedButton"),
            ),
            SizedBox(height: 20),

            // Text Button
            TextButton(
              onPressed: () {},
              child: Text("TextButton"),
            ),
            SizedBox(height: 20),

            // Outlined Button
            OutlinedButton(
              onPressed: () {},
              child: Text("OutlinedButton"),
            ),
            SizedBox(height: 20),

            // Icon Button
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, color: Colors.red),
            ),
            SizedBox(height: 20),

            // InkWell
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.amber,
                child: Text("InkWell Button"),
              ),
            ),
            SizedBox(height: 20),

            // Gesture Detector
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.green,
                child: Text("GestureDetector Button"),
              ),
            ),
            SizedBox(height: 20),

            // Dropdown Button
            DropdownButton(
              value: dropdownValue,
              items: [
                DropdownMenuItem(value: "One", child: Text("One")),
                DropdownMenuItem(value: "Two", child: Text("Two")),
                DropdownMenuItem(value: "Three", child: Text("Three")),
              ],
              onChanged: (val) {
                setState(() {
                  dropdownValue = val!;
                });
              },
            ),
            SizedBox(height: 20),

            // Popup Menu Button
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: "Edit", child: Text("Edit")),
                PopupMenuItem(value: "Delete", child: Text("Delete")),
              ],
              onSelected: (v) => print(v),
            ),
          ],
        ),
      ),
    );
  }
}
