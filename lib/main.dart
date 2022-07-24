import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/first.dart';
import 'package:provider_project/themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeManager>(
      create: (context) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (context, themeManager, child) => MaterialApp(
            title: 'Flutter Demo',
            theme: themeManager.themeData,
            home: const MyFirstPage()),
      ),
    );
  }
}
