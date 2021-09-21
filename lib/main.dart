import 'package:flutter/material.dart';
import './practice.dart';

void main() {
  var sub = subtraction(10);
  print('subtraction: 20-10 = ${sub(20)}');

  Bag redBag =
      Object.factory(name: 'Tiffany', operatingTime: 10, type: 'bag') as Bag;
  redBag
    ..setCost = 4999.99
    ..color = Color.fromRGBO(255, 0, 0, 1.0);

  print(redBag);
  redBag.used();

  assert(redBag.cost > 1000, 'The price of the bag is very high');

  Pen blackPen =
      Object.factory(name: 'Parker', operatingTime: 1, type: 'pen') as Pen;
  print(blackPen);
  blackPen.used();

  const max = 10;
  List newList = [for (var i = 0; i < max; i += 2) i];
  print(newList);
  newList.removeLast();
  newList.add(10);
  print(newList);

  Map country = {
    'name': 'Ukraine',
    'capital': 'Kiev',
    'quarantine': true,
  };

  print(country);
  print(country['quarantine'] = false);

  var newSet = {10, 9, 8, 7, 1};
  print(newSet);
  newSet.add(1);
  newSet.remove(1);
  print(newSet);
  print(
      "first: ${newSet.first}, last: ${newSet.last}, length: ${newSet.length}");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TI-81 Slavskyy Svyatoslav',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TI-81 Slavskyy Svyatoslav'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _mul = 1;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      _mul *= _counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_mul',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Multiplier',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
