import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/themedata.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
              onPressed: () {
                context
                    .read<ThemeManager>()
                    .setCurrentThemeType(ThemeTypes.light);
              },
              child: Container(
                color: Colors.blue,
              )),
          ElevatedButton(
              onPressed: () {
                context
                    .read<ThemeManager>()
                    .setCurrentThemeType(ThemeTypes.dark);
              },
              child: Container(
                color: Colors.black12,
              )),
          ElevatedButton(
              onPressed: () {
                context
                    .read<ThemeManager>()
                    .setCurrentThemeType(ThemeTypes.green);
              },
              child: Container(
                color: Colors.amber,
              )),
          ElevatedButton(
              onPressed: () {
                context
                    .read<ThemeManager>()
                    .setCurrentThemeType(ThemeTypes.amber);
              },
              child: Container(
                color: Colors.pink,
              )),
          ElevatedButton(
              onPressed: () {
                context
                    .read<ThemeManager>()
                    .setCurrentThemeType(ThemeTypes.purple);
              },
              child: Container(
                color: Colors.cyan,
              )),
          ElevatedButton(
              onPressed: () {
                context
                    .read<ThemeManager>()
                    .setCurrentThemeType(ThemeTypes.orange);
              },
              child: Container(
                color: Colors.purple,
              )),
          ElevatedButton(
              onPressed: () {
                context
                    .read<ThemeManager>()
                    .setCurrentThemeType(ThemeTypes.pink);
              },
              child: Container(
                color: Colors.red,
              )),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Selector<Student, int>(
          //   selector: (context, student) => student.rollNo,
          //   builder: (context, value, child) {
          //     return Text(
          //       '$value',
          //       style: Theme.of(context).textTheme.headline4,
          //     );
          //   },
          // ),
          // Selector<Student, String>(
          //     builder: (context, value, child) => Text(
          //           value,
          //           style: Theme.of(context).textTheme.headline4,
          //         ),
          //     selector: (context, student) => student.name),
          // Selector<Student, double>(
          //     builder: (context, value, child) => Text(
          //           '$value',
          //           style: Theme.of(context).textTheme.headline4,
          //         ),
          //     selector: (context, student) => student.fee),
          // MaterialButton(
          //   onPressed: () {
          //     // student.rollNo = 30;
          //   },
          //   child: const Text('change to rollNo'),
          // ),
          // MaterialButton(
          //   onPressed: () {
          //     // student.name = 'Ahmad';
          //   },
          //   child: const Text('change to name'),
          // ),
          // MaterialButton(
          //   onPressed: () {
          //     // student.fee = 35678;
          //   },
          //   child: const Text('change to fee'),
          // )
        ],
      ),
    );
  }
}
