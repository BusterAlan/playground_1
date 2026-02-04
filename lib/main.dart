import 'package:flutter/material.dart';
import 'package:playground_1/helpers/route_names.dart';
import 'package:playground_1/t1_widgets/t1_widgets.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RouteNames.expanded: (context) => ExpandedView(),
        RouteNames.flow: (context) => FlowView(),
        RouteNames.hero: (context) => HeroView(),
        RouteNames.scrollBar: (context) => ScrollBarView(),
        RouteNames.statefulBuilder: (context) => StatefulBuilderView(),
      },
      initialRoute: RouteNames.statefulBuilder, // <- Change this and do a hot restart to view 
      // a different example
    );
}
