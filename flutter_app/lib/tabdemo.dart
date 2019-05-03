import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: "选项一",
    ),
    Tab(
      text: "选项二",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
          length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: myTabs),
            ),
            body: TabBarView(
                children: myTabs.map((Tab tab) {
              return Center(child: Text(tab.text));
            }).toList()),
          )),
    );
  }
}
