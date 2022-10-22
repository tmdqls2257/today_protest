import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_protest2/provider/bottom_navigation_provider.dart';
import 'package:today_protest2/provider/counter_provider.dart';
import 'package:today_protest2/provider/movie_provider.dart';

import 'Home.dart';
import 'shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicati∏on.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: customColor[ColorType.deepPurple],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (BuildContext context) => CounterProvider(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => MovieProvider(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => BottomNavigationProvider(),
          )
        ],
        child: Home(),
      ),
    );
  }
}
