import 'package:flutter/material.dart';
import 'package:gomereal/pages/home_page.dart';

import 'package:gomereal/pages/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const buttonTheme = ButtonThemeData(
        textTheme: ButtonTextTheme.primary, shape: StadiumBorder());

    return MaterialApp(
      title: 'GoMeReal.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Hanazome',
      ),
      home: const HomePage(title: 'GoMeReal.'),
    );
  }
}
