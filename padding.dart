import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Padding Demo")),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 1. Padding all
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  color: Colors.red,
                  child: Text("Padding: all(20)"),
                ),
              ),

              // 2. Padding only
              Padding(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Container(
                  color: Colors.blue,
                  child: Text("Padding: only(left:30, top:10)"),
                ),
              ),

              // 3. Padding symmetric
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Container(
                  color: Colors.green,
                  child: Text("Padding: symmetric"),
                ),
              ),

              // 4. Padding using fromLTRB
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: Container(
                  color: Colors.orange,
                  child: Text("Padding: fromLTRB"),
                ),
              ),

              // 5. Zero padding
              Padding(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.purple,
                  child: Text("Padding: zero"),
                ),
              ),

              // 6. Responsive padding
              Builder(
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: 15,
                    ),
                    child: Container(
                      color: Colors.teal,
                      child: Text("Responsive Padding using MediaQuery"),
                    ),
                  );
                },
              ),

              // 7. Padding inside button
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Text("Button with inner Padding"),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
