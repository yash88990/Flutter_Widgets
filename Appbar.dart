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
      home: const AppBarCorrected(),
    );
  }
}

class AppBarCorrected extends StatelessWidget {
  const AppBarCorrected({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(         //  ✅ VERY IMPORTANT
      length: 3,                         // number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
          centerTitle: true,

          bottom: const TabBar(
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home)),
              Tab(text: "Search", icon: Icon(Icons.search)),
              Tab(text: "Profile", icon: Icon(Icons.person)),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            Center(child: Text("Home Page")),
            Center(child: Text("Search Page")),
            Center(child: Text("Profile Page")),
          ],
        ),
      ),
    );
  }
}
