import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Scaffold Demo",
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Scaffold demo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            tooltip: "拍照",
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: "添加",
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Text("Scaffold"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          color: Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //点击事件
        tooltip: "add",

        /// 长按 提示
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
