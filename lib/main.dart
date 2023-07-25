import 'package:flutter/material.dart';
import 'package:progress_screens_el/widgets/name_only_screen.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Gamification")
          ),
          backgroundColor: Colors.black,
        ),
        body: NameOnly(),
      ),
    );
  }
}
