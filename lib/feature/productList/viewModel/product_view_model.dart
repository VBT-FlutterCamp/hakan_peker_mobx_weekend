import 'package:flutter/material.dart';
import 'package:flutter_mobx_weekend/core/base_view_model.dart';
import 'package:flutter_mobx_weekend/feature/productList/model/product_model.dart';
import 'package:flutter_mobx_weekend/feature/productList/service/product_service.dart';
import 'package:mobx/mobx.dart';

import '../service/IProduct_service.dart';
part 'product_view_model.g.dart';

class ProductViewModel = _ProductViewModelBase with _$ProductViewModel;

abstract class _ProductViewModelBase with Store, BaseViewModel {
  late IProductService productService;

  @observable
  List<ProductModel>? productModel;

  @observable
  bool isLoading = true;

  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> getProducts() async {
    changeLoading();
    productModel = await productService.getDatas();
    changeLoading();
  }

  @override
  void setContext(BuildContext context) {}
  @override
  void init() {
    productService = ProductService(networkManager);
    getProducts();
  }
}
