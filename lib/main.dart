import 'package:flutter/material.dart';
import 'package:session6_task_nti/core/theme/app_color.dart';
import 'package:session6_task_nti/screens/second_main_screen.dart';
import 'package:session6_task_nti/screens/second_screen.dart';

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
        fontFamily: "Lexend Deca",
        scaffoldBackgroundColor: AppColor.backgroundColor,
        appBarTheme: AppBarTheme(
          color: AppColor.backgroundColor,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SecondMainScreen(),
    );
  }
}
