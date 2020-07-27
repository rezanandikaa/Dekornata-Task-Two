import 'package:cloud_firestore/cloud_firestore.dart';

class Product{
  String id;
  String category;
  String image;
  String name;
  String model;
  String price;
  Timestamp createdAt;

  Product();

  Product.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    category = data['category'];
    image = data['image'];
    name = data['name'];
    model = data['model'];
    price = data['price'];
    createdAt = data['createdAt'];
  }

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'category': category,
      'image': image,
      'name': name,
      'model': model,
      'price': price,
      'createdAt': createdAt,
    };
  }
}