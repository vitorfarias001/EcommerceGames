import 'dart:convert';

import 'package:teste/src/model/product.dart';
import 'package:teste/src/repository/interface/product_interface.dart';
import 'package:teste/src/repository/mock/products.dart';

class ProductMockRepository implements IProductRepository {
  @override
  List<Product> getProduct() {
    List<Product> _list = [];
    final _mock = ProductsMock;
    _mock.forEach((e) {
      _list.add(Product.fromJson(e));
    });
    return _list;
  }
}