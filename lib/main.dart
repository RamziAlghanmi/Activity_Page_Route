import 'package:activity_page_route/Second_Activity.dart/ProductsScreen.dart';
import 'package:flutter/material.dart';

import 'First_Activity/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Learn',
      //  home: HomeScreen());
      home: ProductsScreen(),
    );
  }
}
