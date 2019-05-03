import 'package:flutter/material.dart';

void main() => runApp(TabBarSample());

class TabBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
          length: items.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text("tab示例"),
              bottom: TabBar(
                  isScrollable: true,
                  tabs: items.map((ItemView item) {
                    return Tab(
                      text: item.title,
                      icon: Icon(item.icon),
                    );
                  }).toList()),
            ),
          )),
    );
  }
}

class ItemView {
  final String title;
  final IconData icon;

  const ItemView({this.title, this.icon});
}

const List<ItemView> items = const <ItemView>[
  const ItemView(title: "自驾", icon: Icons.directions_car),
  const ItemView(title: "自行车", icon: Icons.directions_bike),
  const ItemView(title: "轮船", icon: Icons.directions_boat),
  const ItemView(title: "公交车", icon: Icons.directions_bus),
  const ItemView(title: "火车", icon: Icons.directions_subway),
  const ItemView(title: "步行", icon: Icons.directions_walk),
  const ItemView(title: "步行", icon: Icons.directions_walk),
];
