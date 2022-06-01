import 'package:estagio/data/dammy_product.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class Produts with ChangeNotifier {
  Map<String, Product > items = {...DUMMY_PRODUCT};

  List<Product> get all {
    return [...items.values];
  }

  int get count {
    return items.length;
  }

  Product byIndex(int i) {
    return items.values.elementAt(i);
  }

  void put(Product product) {
    if(product == null) {
      return;
    }

    notifyListeners();
  }
}