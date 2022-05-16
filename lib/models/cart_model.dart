
import 'package:cloud_firestore/cloud_firestore.dart';

import 'drug_model.dart';

class CartModel {
  String? id;
  String? title;
  int? price;
  String? photoUrl;
  int? quantity;
  bool? isExist;
  String? time;
  Drug? drug;

  CartModel(
      {this.id,
      this.title,
      this.price,
      this.photoUrl,
      this.quantity,
      this.isExist,
      this.time,
      this.drug});

  CartModel.fromJson(DocumentSnapshot snap) {
    var json = snap.data() as Map<String, dynamic>;
    id = snap.id;
    title = json['name'];
    price = json['price'];
    photoUrl = json['img'];
    quantity = json['quantity'];
    isExist = json['isExist'];
    time = json['time'];
    drug = Drug.fromSnap(json['drug']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "price": price,
      "photoUrl": photoUrl,
      "quantity": quantity,
      "isExist": isExist,
      "time": time,
      "product":drug!.toMap()
    };
  }
}
