import 'package:flutter/material.dart';
import 'package:playground_1/t1_widgets/hero_view_two.dart';

/// Hero widget needs a <code>tag</code> to be identified, but in a few words shares the position 
/// and other properties (that child has), and makes a smooth transition between routes; in
/// this example the hero widget wraps an <code>OutlineButton</code> within a tag, and navigates
/// into another page with another hero widget (with the same tag), and the transition is not
/// abrupt
class HeroView extends StatelessWidget {
  const HeroView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Hero widget")),
    body: Center(
      child: Column(
        children: [
          Text("Tap!"),
          SizedBox(height: 50),
          Hero(
            tag: "herotag",
            child: OutlinedButton(
              onPressed: () => _onPressed(context),
              child: Text("A normal button"),
            ),
          ),
        ],
      ),
    ),
  );

  void _onPressed(BuildContext context) => Navigator.of(
    context,
  ).push(MaterialPageRoute(builder: (context) => HeroViewTwo()));
}
