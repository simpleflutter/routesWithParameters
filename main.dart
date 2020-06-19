import 'package:flutter/material.dart';
import 'home_page.dart';
import 'page1.dart';
import 'page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => HomePage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        var argument = settings.arguments;

        switch (settings.name) {
          case '/p1':
            return MaterialPageRoute(
              builder: (BuildContext context) => Page1(student: argument),
            );
            break;

          case '/p2':
           return MaterialPageRoute(
              builder: (BuildContext context) => Page2(employee: argument),
            );
            break;
        }
      },
    );
  }
}
