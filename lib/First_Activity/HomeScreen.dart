import 'package:flutter/material.dart';

import 'DetailScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'الرئيسية',
            style: TextStyle(fontSize: 30, fontWeight: .bold),
          ),
        ),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blueAccent,
          
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            );
          },
          child: Text('انتقل إلى التفاصيل'),
        ),
      ),
    );
    ;
  }
}
