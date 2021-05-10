import 'package:mobx/mobx.dart';
import 'package:teste/src/model/product.dart';
import 'package:teste/src/repository/implementation/product_mock_repository.dart';
import 'package:teste/src/repository/interface/product_interface.dart';

part 'products_controller.g.dart';

class ProductController = _ProductController with _$ProductController;

abstract class _ProductController with Store {
  IProductRepository _productRepository = ProductMockRepository();

  @observable
  List<Product> productList = [];

  @action
  void getAllProducts(){
    productList.addAll(_productRepository.getProduct());
    _alfabeticSort();
  }

  @action
  void _alfabeticSort() =>productList.sort((a,b) => a.name.compareTo(b.name));
}