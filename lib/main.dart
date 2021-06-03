import 'package:flutter/material.dart';
import 'package:perfect_match/screens/category_meals_screen.dart';
import 'package:perfect_match/screens/favourites_screen.dart';
import 'package:perfect_match/screens/meal_detail_screen.dart';
import 'package:perfect_match/screens/tabs_screen.dart';

import 'screens/categories_screen.dart';
import 'screens/filters_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Match !! (Food version)',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.orange[400],
        canvasColor: Color.fromRGBO(0, 0, 0, 50),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Colors.black,
              ),
              bodyText1: TextStyle(
                color: Colors.cyanAccent,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 21,
                //fontWeight: FontWeight.w600,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
