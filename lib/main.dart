import 'package:flutter/material.dart';
import 'package:wake_on_lan/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: 'Wake On Lan',
      theme: ThemeData.dark(),
    );
  }
}
