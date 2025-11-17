import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SizedBoxDemo(),
    );
  }
}

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SizedBox – All Codes")),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // 1. Simple Vertical Space
            Text("Above Space"),
            SizedBox(height: 20),
            Text("Below Space"),

            SizedBox(height: 30),

            // 2. Horizontal Space
            Row(
              children: [
                Text("Item 1"),
                SizedBox(width: 40),
                Text("Item 2"),
              ],
            ),

            SizedBox(height: 30),

            // 3. SizedBox with fixed size child
            SizedBox(
              width: 200,
              height: 80,
              child: Container(
                color: Colors.red,
                child: Center(child: Text("SizedBox fixed size")),
              ),
            ),

            SizedBox(height: 30),

            // 4. SizedBox.expand
            Container(
              height: 120,
              color: Colors.blue.shade100,
              child: SizedBox.expand(
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "SizedBox.expand",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            // 5. SizedBox.shrink (0x0)
            Container(
              color: Colors.green.shade100,
              child: Column(
                children: [
                  Text("Before Shrink"),
                  SizedBox.shrink(),
                  Text("After Shrink (no space)"),
                ],
              ),
            ),

            SizedBox(height: 30),

            // 6. SizedBox.fromSize()
            SizedBox.fromSize(
              size: Size(150, 60),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("fromSize"),
              ),
            ),

            SizedBox(height: 30),

            // 7. SizedBox as Spacer
            Row(
              children: [
                Text("Left"),
                SizedBox(width: 100),
                Text("Right"),
              ],
            ),

            SizedBox(height: 30),

            // 8. SizedBox to limit image size
            SizedBox(
              width: 150,
              height: 150,
              child: Image.network(
                "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d",
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 30),

            // 9. SizedBox with no child (just an empty box)
            SizedBox(
              width: 100,
              height: 50,
              child: Container(color: Colors.orange),
            ),

          ],
        ),
      ),
    );
  }
}
