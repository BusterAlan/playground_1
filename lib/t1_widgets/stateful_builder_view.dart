import 'package:flutter/material.dart';

/// Stateful builder is an widget builder that provides us a new build context, and a state setter
/// callback, to do whatever we need, in a few words, this widget provides us a region to handle
/// local states (like an Stateful Widget), but without creating a new one
/// 
/// In this example page are only a button, with calls the showDialog function, that within has
/// a [StatefulBuilder] with a [RadioGroup] widget, that handles a list of [Radio] widgets, and
/// interacts with changes of the user
class StatefulBuilderView extends StatelessWidget {
  const StatefulBuilderView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Statebuilder widget")),
    body: Center(
      child: FilledButton(
        onPressed: () => _onPressed(context),
        child: Text("Example"),
      ),
    ),
  );

  Future _onPressed(BuildContext context) async => await showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      int? selectedRadio = 0;
      return AlertDialog(
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) =>
              RadioGroup<int>(
                groupValue: selectedRadio,
                onChanged: (value) => setState(() => selectedRadio = value),
                child: Column(
                  mainAxisSize: .min,
                  children: List<Widget>.generate(
                    4,
                    (index) => Radio<int>(
                      value: index,
                    ),
                  ),
                ),
              ),
        ),
      );
    },
  );
}
