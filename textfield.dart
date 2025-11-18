import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFieldDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField – All Examples")),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Basic TextField"),
            TextField(
              decoration: InputDecoration(labelText: "Enter Name"),
            ),
            SizedBox(height: 20),

            Text("TextField with Controller"),
            TextField(
              controller: nameCtrl,
              decoration: InputDecoration(
                labelText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            Text("Password Field"),
            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            Text("Multiline TextField"),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            Text("With Prefix & Suffix"),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.check),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            Text("Filled TextField"),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
