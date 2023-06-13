import 'package:apl_bk_uji_level/homepage.dart';
import 'package:apl_bk_uji_level/homepage.dart';
import 'package:apl_bk_uji_level/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Profile(),
      ),
    );
  }
}
