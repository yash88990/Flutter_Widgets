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
        appBar: AppBar(title: const Text("All Container Examples")),
        body: SingleChildScrollView(
          child: Column(
            children: [

              // 1️⃣ Basic Container
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                color: Colors.blue,
                child: const Text(
                  "Basic Container",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              // 2️⃣ Container with height + width
              Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                width: 200,
                color: Colors.orange,
                child: const Center(child: Text("Height + Width")),
              ),

              // 3️⃣ Container with alignment
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: double.infinity,
                color: Colors.green,
                alignment: Alignment.centerRight,
                child: const Text(
                  "Alignment Right",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              // 4️⃣ Container with border
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Text("Container with Border"),
              ),

              // 5️⃣ Container with Border Radius
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text("Rounded Container", style: TextStyle(color: Colors.white)),
                ),
              ),

              // 6️⃣ Container with Shadow
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: const Center(child: Text("Shadow Container")),
              ),

              // 7️⃣ Container with Gradient
              Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.yellow],
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Gradient Container",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              // 8️⃣ Circular Container
              Container(
                margin: const EdgeInsets.all(10),
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "Circle",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // 9️⃣ Container with Image Background
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://picsum.photos/300/200",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Image Background",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      backgroundColor: Colors.black45,
                    ),
                  ),
                ),
              ),

              // 🔟 Container with Transform (Rotation)
              Container(
                margin: const EdgeInsets.all(10),
                transform: Matrix4.rotationZ(0.2),
                padding: const EdgeInsets.all(20),
                color: Colors.teal,
                child: const Text(
                  "Rotated Container",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              // 11️⃣ Container with Constraints
              Container(
                margin: const EdgeInsets.all(10),
                constraints: const BoxConstraints(
                  minHeight: 60,
                  maxHeight: 120,
                  minWidth: 100,
                  maxWidth: 250,
                ),
                color: Colors.deepOrange,
                child: const Center(
                  child: Text(
                    "Container with Constraints",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              // 12️⃣ Container as Button (GestureDetector)
              GestureDetector(
                onTap: () {
                  print("Container Button Clicked!");
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Tap Me (Container Button)",
                    style: TextStyle(color: Colors.white),
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
