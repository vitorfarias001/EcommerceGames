import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:teste/src/controllers/products_controller.dart';
import 'package:teste/src/model/product.dart';
import 'package:teste/src/repository/implementation/product_mock_repository.dart';
import 'package:teste/src/repository/interface/product_interface.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductController _controller = ProductController();

  @override
  void initState() {
    _controller.getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("oi"),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: _controller.productList.length,
          itemBuilder: (context, index) {
            final product = _controller.productList[index];
            return ListTile(
              title: Text(product.name),
              onTap: (){
                print(product);
              },
            );
          },
        ),
      ),
    );
  }
}
