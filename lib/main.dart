import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:FriendlyChat/screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

final ThemeData kIOSTheme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Colors.pink[900],
  accentColor: Colors.deepPurple[800],

  // Define the default font family.
  fontFamily: 'QuickSand',

  textTheme: TextTheme(
    headline4: TextStyle(
        fontSize: 20.0, fontFamily: 'QuickSand', fontWeight: FontWeight.bold),
  ),
  appBarTheme: AppBarTheme(
    textTheme: ThemeData.dark().textTheme.copyWith(
          headline6: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            color: Colors.white70,
          ),
        ),
  ),
);

final ThemeData kdefaultTheme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.dark,
  primaryColor: Colors.pink[800],
  accentColor: Colors.cyan[600],

  // Define the default font family.
  fontFamily: 'QuickSand',

  textTheme: TextTheme(
    headline4: TextStyle(
        fontSize: 20.0, fontFamily: 'QuickSand', fontWeight: FontWeight.bold),
  ),
  appBarTheme: AppBarTheme(
    textTheme: ThemeData.dark().textTheme.copyWith(
          headline6: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            color: Colors.white70,
          ),
        ),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyChat',
      home: ChatScreen(),
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kdefaultTheme,
    );
  }
}
