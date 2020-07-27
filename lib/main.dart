import 'package:ds_store_task_two/notifier/product_notifier.dart';
import 'package:ds_store_task_two/page/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(new myApp());


// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductNotifier(),
        )
      ],
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavbarPage(),
      ),
    );
  }
}
