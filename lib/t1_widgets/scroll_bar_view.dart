import 'package:flutter/material.dart';

/// Scroll bar is a widget that helps to provide the user feedback within a large area of scroll
///
/// Is useful when the app needs a large page of text, like user agreements, consent, once I used
/// to a page that tells the user to need to accept an feature that uses biometrics to login
class ScrollBarView extends StatefulWidget {
  const ScrollBarView({super.key});

  @override
  State<ScrollBarView> createState() => _ScrollBarViewState();
}

class _ScrollBarViewState extends State<ScrollBarView> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Scroll bar widget"),
      forceMaterialTransparency: true,
    ),
    body: Scrollbar(
      controller: _controller,
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(title: Text("Tile $index")),
      ),
    ),
  );
}
