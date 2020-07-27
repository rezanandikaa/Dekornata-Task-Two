import 'package:ds_store_task_two/api/product_api.dart';
import 'package:ds_store_task_two/notifier/product_notifier.dart';
import 'package:ds_store_task_two/page/filterpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class shopPage extends StatefulWidget {
  shopPage({Key key}) : super(key: key);
  @override
  _shopPageState createState() => _shopPageState();
}

// ignore: camel_case_types
class _shopPageState extends State<shopPage> {
  @override
  void initState() {
    ProductNotifier productNotifier =
        Provider.of<ProductNotifier>(context, listen: false);
    getProduct(productNotifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductNotifier productNotifier = Provider.of<ProductNotifier>(context);
    return Provider<ProductNotifier>(
      create: (_) => ProductNotifier(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shop"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.filter_list, color: Colors.black), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FilterPage()));
            })
          ],
        ),
        body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 4, crossAxisSpacing: 4),
              itemBuilder: (context, int index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Text(productNotifier.productList[index].name,
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                );
              },
              itemCount: productNotifier.productList.length,
            ),
      ),
    );
  }
}
