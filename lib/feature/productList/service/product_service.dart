import 'package:flutter_mobx_weekend/feature/productList/model/product_model.dart';
import 'package:vexana/vexana.dart';

import 'IProduct_service.dart';

class ProductService extends IProductService {
  ProductService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<ProductModel>?> getDatas() async {
    final response = await networkManager.send<ProductModel, List<ProductModel>>(
      'products?limit=5',
      parseModel: ProductModel(),
      method: RequestType.GET,
    );
    return response.data;
  }
}
