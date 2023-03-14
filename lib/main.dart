import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 181, 1, 252)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tugas 2 Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 97, 1, 252),
              Color.fromARGB(255, 129, 174, 252)
            ],
          )),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /* SizedBox(
              child: Image(image: AssetImage('image/usoop.jpeg'))),*/

            Container(
              height: 350, 
              width: 350,
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  boxShadow: List.empty(),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 88, 194, 243),
                    Color.fromARGB(255, 48, 3, 247)
                  ]),
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('image/usoop.jpeg'),
                  )),
            ),
            const Text(
              'Ahmad Pahrurrozi',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 13, 13, 14)),
            ),
            Text(
              '1207070008',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 7, 7, 7)),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        splashColor: Color.fromARGB(255, 56, 2, 252),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
