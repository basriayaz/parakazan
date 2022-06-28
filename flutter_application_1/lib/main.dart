import 'package:flutter/material.dart';
import 'login_page.dart';
import 'bottom.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static final String _title = LoginText().title;
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(

        appBarTheme: const AppBarTheme(centerTitle: true,color: Colors.transparent,elevation: 0)),
      debugShowCheckedModeBanner: false,
      title: _title,
      home: const MyHomePage(),
    );
  }
}
 
