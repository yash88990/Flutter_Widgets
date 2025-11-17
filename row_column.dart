import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RowColumnExamples(),
    );
  }
}

class RowColumnExamples extends StatelessWidget {
  const RowColumnExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row & Column Full Examples"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///////////////////////////////
              // 1. SIMPLE ROW
              ///////////////////////////////
              const Text("1. Simple Row",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: const [
                  Icon(Icons.star),
                  SizedBox(width: 10),
                  Text("Star Icon"),
                ],
              ),

              const Divider(),

              ///////////////////////////////
              // 2. SIMPLE COLUMN
              ///////////////////////////////
              const Text("2. Simple Column",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Column(
                children: const [
                  Text("Line 1"),
                  Text("Line 2"),
                  Text("Line 3"),
                ],
              ),

              const Divider(),

              ///////////////////////////////
              // 3. mainAxisAlignment
              ///////////////////////////////
              const Text("3. Row mainAxisAlignment examples",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("A"),
                  Text("B"),
                  Text("C"),
                ],
              ),

              const Divider(),

              ///////////////////////////////
              // 4. crossAxisAlignment
              ///////////////////////////////
              const Text("4. crossAxisAlignment examples",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Small"),
                    SizedBox(width: 10),
                    Text("LARGE",
                        style: TextStyle(fontSize: 30)),
                  ],
                ),
              ),

              const Divider(),

              ///////////////////////////////
              // 5. Expanded widget
              ///////////////////////////////
              const Text("5. Expanded Example",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Expanded(child: Container(color: Colors.red, height: 40)),
                  Expanded(child: Container(color: Colors.green, height: 40)),
                  Expanded(child: Container(color: Colors.blue, height: 40)),
                ],
              ),

              const Divider(),

              ///////////////////////////////
              // 6. Flexible widget
              ///////////////////////////////
              const Text("6. Flexible Example",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(color: Colors.orange, height: 40),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(color: Colors.teal, height: 40),
                  ),
                ],
              ),

              const Divider(),

              ///////////////////////////////
              // 7. Spacer widget
              ///////////////////////////////
              const Text("7. Spacer Example",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: const [
                  Text("Left"),
                  Spacer(),
                  Text("Right"),
                ],
              ),

              const Divider(),

              ///////////////////////////////
              // 8. Nested Row & Column
              ///////////////////////////////
              const Text("8. Nested Row/Column",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Yash"),
                      Text("Flutter Developer"),
                    ],
                  ),
                ],
              ),

              const Divider(),

              ///////////////////////////////
              // 9. COMPLEX UI using Row+Column
              ///////////////////////////////
              const Text("9. Complex Card Layout",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Product Name",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Product Description",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
