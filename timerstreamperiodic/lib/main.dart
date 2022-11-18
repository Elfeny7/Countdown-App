import 'package:flutter/material.dart';
import 'package:timerstreamperiodic/home.dart';
import 'package:timerstreamperiodic/stream_counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      title: 'Nyoba Timer Gan',
      home: HomeScreen(),
    );
  }
}
