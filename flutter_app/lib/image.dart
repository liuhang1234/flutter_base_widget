import 'package:flutter/material.dart';

class ImagePage extends MaterialPageRoute {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/text");
          },
          child: Text("这是Image"),
        ),
      ),
    );
  }
}
