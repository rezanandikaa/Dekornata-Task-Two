import 'package:ds_store_task_two/page/bag.dart';
import 'package:ds_store_task_two/page/favorite.dart';
import 'package:ds_store_task_two/page/home.dart';
import 'package:ds_store_task_two/page/profile.dart';
import 'package:ds_store_task_two/page/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class NavbarPage extends StatefulWidget {
  @override
  _NavbarPageState createState() => _NavbarPageState();
}

// ignore: camel_case_types
class _NavbarPageState extends State<NavbarPage> {
  int _selectedPage = 0;
  final _pageOption = [
    homePage(),
    shopPage(),
    bagPage(),
    favouritePage(),
    profilePage(),
  ];

  Future showExitPopUp() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Konfirmasi",
                style: TextStyle(
                    fontFamily: "CenturyGothic",
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold)),
            content: Text("Keluar Dari Aplikasi?",
                style: TextStyle(fontFamily: "CenturyGothic", fontSize: 12.0)),
            actions: <Widget>[
              RaisedButton(
                child: Text("Tidak",
                    style: TextStyle(
                        fontFamily: "CenturyGothic",
                        fontSize: 12.0,
                        color: Colors.black)),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              RaisedButton(
                child: Text("Ya",
                    style: TextStyle(
                        fontFamily: "CenturyGothic",
                        fontSize: 12.0,
                        color: Colors.black)),
                color: Colors.white,
                onPressed: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showExitPopUp();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primaryColor: Colors.white, canvasColor: Colors.white),
        home: new Scaffold(
          body: _pageOption[_selectedPage],
          bottomNavigationBar: new BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedPage,
              onTap: (int index){
                setState(() {
                  _selectedPage = index;
                });
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.shopping_cart),
                  title: new Text('Shop'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.card_travel),
                  title: new Text('Bags'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.favorite_border),
                  title: new Text('Favorites'),
                ),
                BottomNavigationBarItem(
                    icon: new Icon(Icons.account_circle),
                    title: new Text('Profile'),
                ),
              ],
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.black45,
          ),
        ),
      ),
    );
  }
}
