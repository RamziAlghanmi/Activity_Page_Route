import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' شاشة التفاصيل ')),
      body: Center(
        child: MaterialButton(
          color: Colors.blueAccent,

          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('رجوع'),
        ),
      ),
    );
    ;
  }
}
