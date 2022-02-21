import 'package:flutter/material.dart';
import 'package:phone_book/resources/strings.dart';
import 'package:phone_book/resources/theme.dart';
import 'package:phone_book/topics/t02_builder/t02_phone_book.dart';

void main() => runApp(const PhoneBookApp());

class PhoneBookApp extends StatefulWidget {
  const PhoneBookApp({Key? key}) : super(key: key);

  @override
  State<PhoneBookApp> createState() => _PhoneBookAppState();
}

class _PhoneBookAppState extends State<PhoneBookApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      themeMode: currentThemeMode,
      theme: PhoneBookTheme.light,
      darkTheme: PhoneBookTheme.dark,
      home: PhoneBook(onThemeModePressed: toggleThemeMode),
    );
  }
}
