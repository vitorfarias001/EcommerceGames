// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductController on _ProductController, Store {
  final _$productListAtom = Atom(name: '_ProductController.productList');

  @override
  List<Product> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(List<Product> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  final _$_ProductControllerActionController =
      ActionController(name: '_ProductController');

  @override
  void getAllProducts() {
    final _$actionInfo = _$_ProductControllerActionController.startAction(
        name: '_ProductController.getAllProducts');
    try {
      return super.getAllProducts();
    } finally {
      _$_ProductControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _alfabeticSort() {
    final _$actionInfo = _$_ProductControllerActionController.startAction(
        name: '_ProductController._alfabeticSort');
    try {
      return super._alfabeticSort();
    } finally {
      _$_ProductControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productList: ${productList}
    ''';
  }
}
