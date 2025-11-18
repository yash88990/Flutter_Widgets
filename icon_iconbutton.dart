import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IconDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IconDemo extends StatefulWidget {
  @override
  _IconDemoState createState() => _IconDemoState();
}

class _IconDemoState extends State<IconDemo> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon & IconButton – All Codes"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // -------------------------
            // 1. Basic Icon
            // -------------------------
            Text("1. Basic Icon", style: titleStyle),
            Icon(
              Icons.home,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(height: 20),

            // -------------------------
            // 2. Icon with shadow
            // -------------------------
            Text("2. Icon with Shadow", style: titleStyle),
            Icon(
              Icons.star,
              size: 60,
              color: Colors.amber,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(3, 3),
                ),
              ],
            ),
            SizedBox(height: 20),

            // -------------------------
            // 3. IconButton Basic
            // -------------------------
            Text("3. IconButton (Basic)", style: titleStyle),
            IconButton(
              icon: Icon(Icons.phone),
              color: Colors.green,
              iconSize: 40,
              onPressed: () {
                print("Phone icon pressed");
              },
            ),
            SizedBox(height: 20),

            // -------------------------
            // 4. IconButton with Tooltip
            // -------------------------
            Text("4. IconButton with Tooltip", style: titleStyle),
            IconButton(
              icon: Icon(Icons.info),
              color: Colors.blue,
              tooltip: "Information",
              iconSize: 40,
              onPressed: () {},
            ),
            SizedBox(height: 20),

            // -------------------------
            // 5. IconButton with ripple effect customization
            // -------------------------
            Text("5. Custom Splash/Highlight", style: titleStyle),
            IconButton(
              icon: Icon(Icons.send),
              color: Colors.deepPurple,
              splashRadius: 30,
              splashColor: Colors.yellow,
              highlightColor: Colors.red,
              onPressed: () {},
            ),
            SizedBox(height: 20),

            // -------------------------
            // 6. Toggle IconButton (Favorite)
            // -------------------------
            Text("6. Toggle Favorite Button", style: titleStyle),
            IconButton(
              isSelected: isFav,
              selectedIcon: Icon(Icons.favorite, color: Colors.red, size: 40),
              icon: Icon(Icons.favorite_border, size: 40),
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
            ),
            SizedBox(height: 20),

            // -------------------------
            // 7. IconButton inside Row
            // -------------------------
            Text("7. IconButton inside Row", style: titleStyle),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {},
                ),
                Text("Counter Example"),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),

            // -------------------------
            // 8. Big IconButton using constraints
            // -------------------------
            Text("8. Big Custom IconButton", style: titleStyle),
            IconButton(
              iconSize: 50,
              constraints: BoxConstraints(
                minWidth: 80,
                minHeight: 80,
              ),
              color: Colors.orange,
              icon: Icon(Icons.lightbulb),
              onPressed: () {},
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  TextStyle get titleStyle =>
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
}
