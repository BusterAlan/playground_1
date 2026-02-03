import 'package:flutter/material.dart';

/// The expanded widget helps to divide certain sizes into smaller ones
///
/// The most important parameter of the widget is the <code>flex</code>, that tells to
/// the framework how much proportion of the size (vertically or horizontally, depending in what
/// herarchy are used)
///
/// <code>flex</code> property defaults to <code>1</code>, which translates into all the
/// available space
class ExpandedView extends StatelessWidget {
  const ExpandedView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Expanded widget")),
    body: Column(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox.expand(child: ColoredBox(color: Colors.indigo)),
        ),
        Expanded(
          flex: 1,
          child: SizedBox.expand(child: ColoredBox(color: Colors.limeAccent)),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox.expand(
                  child: ColoredBox(color: Colors.blueAccent),
                ),
              ),
              Expanded(
                flex: 5,
                child: SizedBox.expand(
                  child: ColoredBox(color: Colors.redAccent),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
