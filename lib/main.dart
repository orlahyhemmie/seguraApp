import 'package:flutter/material.dart';
import 'package:segurapay/ui/pages/screen.dart';
import 'package:segurapay/ui/pages/splashscreen.dart';
import 'ui/registration/reg.dart';
import 'ui/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: //Phone()
          const SplashScreen(),
    );
  }
}
