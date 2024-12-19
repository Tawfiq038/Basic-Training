// ignore_for_file: prefer_const_constructors
/*
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hello"),
        ),
        body: ElevatedButton(
          child: Text("Navigate"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AboutScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hello"),
        ),
        body: ElevatedButton(
          child: Text("Navigate"),
          onPressed: () {
            print(context); // Print the context here

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AboutScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Screen"),
      ),
      body: Center(
        child: Text("Welcome to the About Screen!"),
      ),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hello"),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Hero(
                tag: Image,
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg"),
              ),
              onPressed: () {
                print(context); // Print the context here

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AboutScreen(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Screen"),
      ),
      /*
      body: Center(
        child: Text("Welcome to the About Screen!"),
      ),
      */
      body: Hero(
        tag: Image,
        child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg"),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hello"),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return IconButton(
              iconSize: 100.0, // Set the size of the icon
              icon: Hero(
                tag: 'imageHero',
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg",
                  width: 100, // Set the width of the image
                  height: 100, // Set the height of the image
                  fit: BoxFit
                      .cover, // Ensure the image fits within the icon size
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AboutScreen(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("About Screen"),
      ),
      body: Center(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg",
          ),
        ),
      ),
    );
  }
}



/*
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Welcome !",
            style: TextStyle(color: Colors.white),
          ),
        ),

        /* body: Center(
          child: Container(
            child: Text("Tawfiq"),
            padding: EdgeInsets.all(50),
          ),
        ), */

        /* body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Expanded(
              flex: 4,
              child: Icon(Icons.backpack),
            ),
            Icon(Icons.leaderboard),
            Icon(Icons.person)
          ],
        ), */

        /* body: Stack(
          children: [
            Container(
              color: Colors.amber,
              height: 100,
              width: 100,
            ),
            Align(
              child: Icon(Icons.verified),
              alignment: Alignment.center,
            )
          ],
        ), */

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("printing pressed...");

            setState(() {
              count++;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: "Business",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "School",
            ),
          ],
        ),
        drawer: Drawer(
          child: Text("Yoo..!"),
        ),

        /*body: ListView(
          scrollDirection: Axis.horizontal,
          //addAutomaticKeepAlives: false,
          children: [
            Container(
              color: Colors.purple,
              height: 500,
              width: 500,
            ),
            Container(
              color: Colors.amber,
              height: 500,
              width: 500,
            ),
            Container(
              color: Colors.red,
              height: 500,
              width: 500,
            ),
          ],
        ),
        */
        /*
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              color: randomColor(),
              width: 500,
              height: 500,
            );
          },
        ),
        */

        body: Center(
          child: Text(
            "$count",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
*/
