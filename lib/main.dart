import 'package:flutter/material.dart';
import 'package:flutter_application_1/cats_home_screen.dart';
import 'package:flutter_application_1/data/all_cats.dart';
import 'package:flutter_application_1/model/cat.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();
void main() {
  // final listOfCatsAsJson = allCats;
  // final listOfCatsAsObjects = <Cat>[];
  // for (var i = 0; i < listOfCatsAsObjects.length; i++) {
  //   final catAsJson = listOfCatsAsJson[i];
  //   final catAsObject = Cat.fromJson(catAsJson);
  //   listOfCatsAsObjects.add(catAsObject);
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen(),
    );
  }
}

// builder: (context, child) =>
//     Directionality(textDirection: TextDirection.ltr, child: child!),
// home: Scaffold(
//   appBar: AppBar(
//     title: const Text("Widegt App"),
//     //leading: Icon(Icons.access_time),
//     actions: const [
//       Badge(child: IconButton(onPressed: hi, icon: Icon(Icons.favorite)))
//     ],
//     backgroundColor: Colors.yellow,
//   ),
//   drawer: Drawer(
//     child: Center(child: Text("I am just a girl")),
//   ),
//   endDrawer: Drawer(
//     child: Center(child: Text("I am just a girl")),
//   ),
//   floatingActionButton: FloatingActionButton.extended(
//     onPressed: null,
//     label: Text("Floating Button"),
//   ),
//   body: ListView.separated(
//     separatorBuilder: (_, __) => Divider(),
//     itemBuilder: (BuildContext context, int index) {
//       final catName = cats[index];
//       return Card(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Text(catName),
//         ),
//       );
//     },
//     itemCount: cats.length,
//     // children: [
//     //   Center(
//     //       child: Text(
//     //     "123",
//     //     style: TextStyle(
//     //       fontSize: 48,
//     //       fontFamily: 'Times New Roman',
//     //       fontStyle: FontStyle.italic,
//     //       fontWeight: FontWeight.w900,
//     //     ),
//     //   )),
//     //   Container(color: Colors.yellow, width: 100, height: 100),
//     //   Container(color: Colors.red, width: 100, height: 100),
//     //   Container(color: Colors.blue, width: 100, height: 100),
//     //   ElevatedButton(
//     //     onPressed: hi,
//     //     child: Text("Elevated Button"),
//     //     style: ButtonStyle(),
//     //   ),
//     //   ElevatedButton.icon(
//     //       onPressed: hi, icon: Icon(Icons.home), label: Text('Icon')),
//     //   FilledButton(onPressed: hi, child: Text("Filled Button")),
//     //   OutlinedButton(onPressed: hi, child: Text("Outlined Button")),
//     //   TextButton(onPressed: hi, child: Text("Text Button")),
//     //   IconButton(onPressed: hi, icon: Icon(Icons.favorite))
//   ),
// ),

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
