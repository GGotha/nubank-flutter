import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[800],
    ),
  );

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nubank",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashPage(),
    );
  }
}
