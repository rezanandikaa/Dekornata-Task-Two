import 'package:flutter/material.dart';

// ignore: camel_case_types
class profilePage extends StatefulWidget {
  @override
  _profilePageState createState() => _profilePageState();
}

// ignore: camel_case_types
class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Profile'),
      ),
    );
  }
}
