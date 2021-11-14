import 'package:flutter/material.dart';

import 'home/home.dart';
import 'theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messaging App',
      theme: themeData(context),
      home: Home(),
    );
  }

  

}
