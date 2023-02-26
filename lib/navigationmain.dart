import 'package:flutter/material.dart';

//ini adalah contoh halaman yang akan di panggil ke halaman dart
class halaman extends StatelessWidget {
  const halaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
      child: Text('ini adalah file yang berbeda'),
    ));
  }
}
