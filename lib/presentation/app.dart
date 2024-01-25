import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:savvy_stash/presentation/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      initialRoute: '/',
      home: HomePage(),
    );
  }
}
