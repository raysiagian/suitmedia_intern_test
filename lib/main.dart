import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_screen/model/provider.dart';
import 'package:flutter_app/pages/first_screen/screen/first_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocalProvider(),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}
