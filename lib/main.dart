import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(NubankUiClone());
}

class NubankUiClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
