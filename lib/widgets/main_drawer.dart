import 'package:flutter/material.dart';
import 'package:perfect_match/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.deepPurpleAccent[100],
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(height: 110),
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            alignment: Alignment.centerLeft,
            color: Colors.deepPurple,
            child: Text(
              'Perfect Match!',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            alignment: Alignment.centerLeft,
            color: Colors.deepPurple,
            child: Text(
              'Food You Love',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile('Recipes', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}
