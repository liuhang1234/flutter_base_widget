import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var colorBlendMode = [
    'BlendMode.clear',
    'BlendMode.src',
    'BlendMode.dst',
    'BlendMode.srcOver',
    'BlendMode.dstOver',
    'BlendMode.srcIn',
    'BlendMode.dstIn',
    'BlendMode.srcOut',
    'BlendMode.dstOut',
    'BlendMode.srcATop',
    'BlendMode.dstATop',
    'BlendMode.xor',
    'BlendMode.plus',
    'BlendMode.modulate',
    'BlendMode.screen',
    'BlendMode.overlay',
    'BlendMode.darken',
    'BlendMode.lighten',
    'BlendMode.colorDodge',
    'BlendMode.colorBurn',
    'BlendMode.hardLight',
    'BlendMode.softLight',
    'BlendMode.difference',
    'BlendMode.exclusion',
    'BlendMode.multiply',
    'BlendMode.hue',
    'BlendMode.saturation',
    'BlendMode.color',
    'BlendMode.luminosity',
  ];
  var colorBlendModeArray = [
    BlendMode.clear,
    BlendMode.src,
    BlendMode.dst,
    BlendMode.srcOver,
    BlendMode.dstOver,
    BlendMode.srcIn,
    BlendMode.dstIn,
    BlendMode.srcOut,
    BlendMode.dstOut,
    BlendMode.srcATop,
    BlendMode.dstATop,
    BlendMode.xor,
    BlendMode.plus,
    BlendMode.modulate,
    BlendMode.screen,
    BlendMode.overlay,
    BlendMode.darken,
    BlendMode.lighten,
    BlendMode.colorDodge,
    BlendMode.colorBurn,
    BlendMode.hardLight,
    BlendMode.softLight,
    BlendMode.difference,
    BlendMode.exclusion,
    BlendMode.multiply,
    BlendMode.hue,
    BlendMode.saturation,
    BlendMode.color,
    BlendMode.luminosity,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
//        body: _blendModeListView());
        body: GridView(gridDelegate: null));
  }

  Widget _blendModeListView() {
    var listview = ListView.builder(
        itemCount: colorBlendMode.length,
        itemExtent: 60,
        padding: EdgeInsets.all(10.0),
        itemBuilder: (BuildContext context, int index) {
          return new FlatButton(
              onPressed: () => _look(index),
              child: Card(
                child: Center(
                  child: IconButton(icon: null, onPressed: null),
                ),
              ));
        });
    return listview;
  }

  void _look(int index) {
    Navigator.of(context).push(
      new MaterialPageRoute<void>(
        // Add 20 lines from here...
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(colorBlendMode[index]),
            ),
          );
        },
      ), // ... to here.
    );
  }
}
