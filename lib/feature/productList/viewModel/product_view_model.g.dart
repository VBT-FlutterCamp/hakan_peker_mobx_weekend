// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductViewModel on _ProductViewModelBase, Store {
  final _$productModelAtom = Atom(name: '_ProductViewModelBase.productModel');

  @override
  List<ProductModel>? get productModel {
    _$productModelAtom.reportRead();
    return super.productModel;
  }

  @override
  set productModel(List<ProductModel>? value) {
    _$productModelAtom.reportWrite(value, super.productModel, () {
      super.productModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_ProductViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getProductsAsyncAction =
      AsyncAction('_ProductViewModelBase.getProducts');

  @override
  Future<void> getProducts() {
    return _$getProductsAsyncAction.run(() => super.getProducts());
  }

  @override
  String toString() {
    return '''
productModel: ${productModel},
isLoading: ${isLoading}
    ''';
  }
}
