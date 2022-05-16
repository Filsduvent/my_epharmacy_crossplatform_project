import 'package:cloud_firestore/cloud_firestore.dart';

class Drug {
  final String id;
  final String title;
  final String manifacturingDate;
  final String expiringDate;
  final String photoUrl;
  final String categories;
  final String description;
  final int price;
  Drug({
    required this.id,
    required this.title,
    required this.manifacturingDate,
    required this.expiringDate,
    required this.photoUrl,
    required this.categories,
    required this.description,
    required this.price,
  });

  static Drug fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Drug(
      id: snap.id,
      title: snapshot['title'],
      manifacturingDate: snapshot['manifacturing_date'].toString(),
      expiringDate: snapshot['expiring_date'].toString(),
      photoUrl: snapshot['photo_url'].toString(),
      categories: snapshot['categories'],
      description: snapshot['description'],
      price: snapshot['price'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'manifacturing_date': manifacturingDate,
      'expiring_date': expiringDate,
      'photo_url': photoUrl,
      'description': description,
      'categories': categories,
      'price': price,
    };
  }
}
