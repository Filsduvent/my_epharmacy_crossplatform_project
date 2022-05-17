import 'package:e_pharmacie_platform_app/models/cart_model.dart';
import 'package:e_pharmacie_platform_app/models/drug_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CartController extends GetxController {
  Map<String, CartModel> _items = {};

  Map<String, CartModel> get items => _items;

  void addItem(Drug drug, int quantity) {
    var totalQuantity = 0;
    if (_items.containsKey(drug.id)) {
      _items.update(drug.id, (value) {
        totalQuantity = value.quantity! + quantity;

        return CartModel(
          id: value.id,
          title: value.title,
          price: value.price,
          photoUrl: value.photoUrl,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
          drug: drug,
        );
      });

      if (totalQuantity <= 0) {
        _items.remove(drug.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(drug.id, () {
          return CartModel(
            id: drug.id,
            title: drug.title,
            price: drug.price,
            photoUrl: drug.photoUrl,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),
            drug: drug,
          );
        });
      } else {
        Get.snackbar(
          "Item count",
          "You should at least add an item in the cart",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
          icon: const Icon(
            Icons.alarm,
            color: Colors.white,
          ),
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 5),
        );
      }
    }
    update();
  }

  bool existInCart(Drug drug) {
    if (_items.containsKey(drug.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(Drug drug) {
    var quantity = 0;
    if (_items.containsKey(drug.id)) {
      _items.forEach((key, value) {
        if (key == drug.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItems {
    var totalQuantity = 0;
    _items.forEach((key, value) {
      totalQuantity = totalQuantity + value.quantity!;
    });
    return totalQuantity;
  }
 
  List<CartModel> get getItems {
    return _items.entries.map((e) {
      return e.value;
    }).toList();
  }

  int get totalAmount {
    var total = 0;

    _items.forEach((key, value) {
      total += value.quantity! * value.price!;
    });
    return total;
  }
}
