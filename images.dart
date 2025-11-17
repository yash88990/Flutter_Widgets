import 'package:flutter/material.dart';
// import 'dart:io'; // Required only if using Image.file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Image Widget Examples"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 1. Image.asset()
            sectionTitle("1. Image.asset()"),
            Image.asset(
              'assets/images/img.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),

            // 2. Image.network()
            sectionTitle("2. Image.network()"),
            Image.network(
              "https://picsum.photos/200",
              height: 150,
              width: 150,
              fit: BoxFit.cover,

            ),
            SizedBox(height: 20),

            


            // 5. Advanced Image properties
            sectionTitle("5. Image with Properties"),
            Image.network(
              "https://picsum.photos/250",
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              repeat: ImageRepeat.noRepeat,
              filterQuality: FilterQuality.high,
            ),
            SizedBox(height: 20),

            // 6. Extra widgets
            sectionTitle("6. Circle Avatar"),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
            SizedBox(height: 20),

            sectionTitle("7. ClipRRect (Rounded Image)"),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://picsum.photos/300",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            sectionTitle("8. FadeInImage"),
            FadeInImage(
              placeholder: AssetImage('assets/images/img.jpg'), // blur placeholder
              image: NetworkImage("https://picsum.photos/300"),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
