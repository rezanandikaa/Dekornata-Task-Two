import 'package:flutter/material.dart';

// ignore: camel_case_types
class favouritePage extends StatefulWidget {
  @override
  _favouritePageState createState() => _favouritePageState();
}

// ignore: camel_case_types
class _favouritePageState extends State<favouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Favorite'),
      ),
    );
  }
}
