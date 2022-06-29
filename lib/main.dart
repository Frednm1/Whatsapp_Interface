import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(18, 140, 126, 1),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatapp theme inspiration',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const DefaultTabController(
        length: 3,
        child: HomePage(),
      ),
    );
  }
}
