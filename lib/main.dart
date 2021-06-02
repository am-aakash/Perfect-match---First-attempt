import 'package:flutter/material.dart';

import 'categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Match !!',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 500),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Colors.black,
              ),
              bodyText1: TextStyle(
                color: Colors.cyanAccent,
              ),
              headline6: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 20,
                //fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: CategoriesScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DeliMeals'),
//       ),
//       body: Center(
//         child: Text('Navigation Time!'),
//       ),
//     );
//   }
// }
