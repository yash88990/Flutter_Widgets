import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // 1️⃣ **TITLE**
      title: "MaterialApp All Features",

      // 2️⃣ **DEBUG BANNER**
      debugShowCheckedModeBanner: false,

      // 3️⃣ **THEME**
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),

      // 4️⃣ **DARK THEME**
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),

      // 5️⃣ **THEME MODE**
      themeMode: ThemeMode.system, 
      // ThemeMode.light, ThemeMode.dark, ThemeMode.system

      // 6️⃣ **HOME SCREEN**
      home: const HomePage(),

      // 7️⃣ **ROUTES (Named Navigation)**
      routes: {
        "/home": (context) => const HomePage(),
        "/about": (context) => const AboutPage(),
        "/settings": (context) => const SettingsPage(),
      },

      // 8️⃣ **ON GENERATE ROUTE** (Advanced Routing)
      onGenerateRoute: (settings) {
        if (settings.name == "/product") {
          return MaterialPageRoute(
            builder: (context) => ProductPage(settings.arguments),
          );
        }
        return null;
      },

      // 9️⃣ **NAVIGATION OBSERVER**
      navigatorObservers: [
        NavigatorObserver(),
      ],

      // 🔟 **LOCALE + LOCALIZATION**
      locale: const Locale('en', 'US'),

      // 1️⃣1️⃣ **SUPPORTED LOCALES**
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('hi', 'IN'),
      ],

      // 1️⃣2️⃣ **SCROLL BEHAVIOR**
      scrollBehavior: MaterialScrollBehavior(),
    );
  }
}

//////////////////////////////////////////////////
// HOME PAGE /////////////////////////////////////
//////////////////////////////////////////////////
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
              child: const Text("Go to About Page"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/settings");
              },
              child: const Text("Go to Settings Page"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/product",
                  arguments: "Laptop",
                );
              },
              child: const Text("Open Product Page (With Data)"),
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////
// ABOUT PAGE ////////////////////////////////////
//////////////////////////////////////////////////
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Page")),
      body: const Center(
        child: Text(
          "This is About Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////
// SETTINGS PAGE /////////////////////////////////
//////////////////////////////////////////////////
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings Page")),
      body: const Center(child: Text("Settings Here")),
    );
  }
}

//////////////////////////////////////////////////
// PRODUCT PAGE (With Data Passed) ///////////////
//////////////////////////////////////////////////
class ProductPage extends StatelessWidget {
  final dynamic productName;
  const ProductPage(this.productName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$productName Page")),
      body: Center(
        child: Text(
          "Product Selected: $productName",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
