import 'package:flutter/material.dart';

class HeroViewTwo extends StatelessWidget {
  const HeroViewTwo({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Hero widget #2")),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Hello world"),
            ),
          ),
          Text("Lorem ipsum"),
          Hero(
            tag: "herotag",
            child: OutlinedButton(
              onPressed: () {
                // :)
              },
              child: Text("Nothing to see here..."),
            ),
          ),
        ],
      ),
    ),
  );
}
