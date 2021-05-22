import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/secondScreen': (context) => SecondScreen(),
        '/thirdScreen': (context) => ThirdScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Screen",
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    '/secondScreen'
                );
              },
              child: Text("Go to Next Screen"),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal)),
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Screen",
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen(),
                  ),
                );
              },
              child: Text("Go to Next Screen"),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal)),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Third Screen",
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go to First Screen"),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal)),
            )
          ],
        ),
      ),
    );
  }
}
