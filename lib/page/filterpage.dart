import 'package:ds_store_task_two/main.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int _currentSize = 0;
  bool pressed = true;
  double size = 50;
  double sizeButton = 100;
  RangeValues values = RangeValues(78, 143);
  RangeLabels labels = RangeLabels('78', '143');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Filter", style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text("Price List", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 50,
                  color: Colors.white,
                  child: Text("\$78", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
                ),
                SizedBox(width: 10),
                Container(
                  width: 50,
                  color: Colors.white,
                  child: Text("\$143", textAlign: TextAlign.right, style: TextStyle(fontSize: 16),),
                ),
              ],
            ),
          ),
          RangeSlider(
              min: 78,
              max: 143,
              values: values,
              labels: labels,
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              onChanged: (value){
                setState(() {
                  values = value;
                  labels = RangeLabels(value.start.toString(), value.end.toString());
                });
              }),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text("Colors", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: size,
                height: size,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: size,
                height: size,
                decoration: new BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: size,
                height: size,
                decoration: new BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: size,
                height: size,
                decoration: new BoxDecoration(
                  color: Colors.brown,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: size,
                height: size,
                decoration: new BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: size,
                height: size,
                decoration: new BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text("Sizes", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
          Container(
          width: 70,
              child: RaisedButton(
                color: Colors.white,
                  onPressed: (){},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                 ),
                child: Text("XS", style: TextStyle(
                   fontSize:14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red))),
            ),
              Container(
                width: 70,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("S", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
              Container(
                width: 70,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("M", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
              Container(
                width: 70,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("L", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
              Container(
                width: 70,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("XL", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text("Category", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 50.0,
            runSpacing: 10.0,
            children: <Widget>[
              Container(
                width: 100,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("All", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
              Container(
                width: 100,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("Women", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
              Container(
                width: 100,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("Men", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
              Container(
                width: 100,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("Boys", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
              Container(
                width: 100,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text("Girls", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 150,
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text("Discard", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
              ),
              Container(
                width: 150,
                child: RaisedButton(
                    color: Colors.red,
                    onPressed: (){},
                    padding: EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text("Apply", style: TextStyle(
                        fontSize:14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
              ),
            ],)
        ],
      ),
    );
  }
}
