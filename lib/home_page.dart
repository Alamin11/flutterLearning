import 'package:flutter/material.dart';

final int days = 30;
String name = "Al amin";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child:
              Text("This is another try for next $days days by myself - $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
