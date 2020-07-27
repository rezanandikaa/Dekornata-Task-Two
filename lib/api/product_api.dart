import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ds_store_task_two/model/product.dart';
import 'package:ds_store_task_two/notifier/product_notifier.dart';

getProduct(ProductNotifier productNotifier) async {
  QuerySnapshot snapshot = await Firestore.instance
      .collection('product')
      .orderBy("createdAt", descending: true)
      .getDocuments();

  List<Product> _productList = [];

  snapshot.documents.forEach((document) {
    Product product = Product.fromMap(document.data);
    _productList.add(product);
  });

  productNotifier.productList = _productList;
}
