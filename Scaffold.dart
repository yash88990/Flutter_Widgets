import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScaffoldExamples(),
    );
  }
}

class ScaffoldExamples extends StatelessWidget {
  const ScaffoldExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1️⃣ **App Bar**
      appBar: AppBar(
        title: const Text("Scaffold All Examples"),
        centerTitle: true,
      ),

      // 2️⃣ **Drawer (Left Side Menu)**
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header", style: TextStyle(color: Colors.white)),
            ),
            ListTile(title: Text("Home")),
            ListTile(title: Text("Profile")),
            ListTile(title: Text("Settings")),
          ],
        ),
      ),

      // 3️⃣ **End Drawer (Right Side Menu)**
      endDrawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text("End Drawer", style: TextStyle(color: Colors.white)),
            ),
            ListTile(title: Text("Option 1")),
            ListTile(title: Text("Option 2")),
          ],
        ),
      ),

      // 4️⃣ **Floating Action Button**
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      // 5️⃣ **Floating Button Location**
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // 6️⃣ **Bottom Navigation Bar**
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      // 7️⃣ **Bottom Sheet (Fixed)**
      bottomSheet: Container(
        height: 50,
        color: Colors.black12,
        child: const Center(child: Text("This is a Bottom Sheet")),
      ),

      // 8️⃣ **SnackBar Example Button inside body**
      body: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [

                // Page Title
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "All Scaffold Main Features",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),

                // 9️⃣ **SnackBar Button**
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Hello from SnackBar!"),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: const Text("Show SnackBar"),
                ),

                const SizedBox(height: 20),

                // 🔟 **Show Bottom Sheet (Modal)**
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 200,
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Close Sheet"),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text("Open Modal Bottom Sheet"),
                ),

                const SizedBox(height: 20),

                // 1️⃣1️⃣ **Scaffold Background Color**
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blueGrey[100],
                  child: const Center(child: Text("Scaffold Background Example")),
                ),

                const SizedBox(height: 20),

                // 1️⃣2️⃣ **Persistent Footer Buttons**
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Persistent Footer Example ↓"),
                ),

                const SizedBox(height: 500), // scrolling demo
              ],
            ),
          );
        },
      ),

      // 1️⃣3️⃣ **Persistent Footer Buttons**
      persistentFooterButtons: [
        ElevatedButton(onPressed: () {}, child: const Text("OK")),
        ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
      ],

      // 1️⃣4️⃣ **Scaffold Background Color**
      backgroundColor: Colors.white,
    );
  }
}
