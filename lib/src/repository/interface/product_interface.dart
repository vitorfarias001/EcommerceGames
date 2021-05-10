import 'package:teste/src/model/product.dart';

abstract class IProductRepository{
  List<Product> getProduct();
}