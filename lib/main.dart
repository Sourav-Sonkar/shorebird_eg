import 'package:flutter/material.dart';
import 'package:shorebird_eg/screen/coming_soon.dart';
import 'package:shorebird_eg/screen/home_page.dart';
import 'package:shorebird_eg/screen/second_page.dart';
import 'package:shorebird_eg/screen/third_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0; //index of selected item
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const SecondScreen(),
    const ThirdScreen(),
  ]; //list of pages
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(colorSchemeSeed: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shorebird Example'),
        ),
        body: _widgetOptions
            .elementAt(_selectedIndex), //set body of selected page
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Land',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'UI issues',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.crisis_alert_sharp),
              label: 'Stuck',
              backgroundColor: Colors.green,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index; //set selected index
            });
          },
        ),
      ),
    );
  }
}
