import 'package:vexana/vexana.dart';

import '../model/product_model.dart';

abstract class IProductService {
  final INetworkManager networkManager;

  IProductService(this.networkManager);

  Future<List<ProductModel>?> getDatas();
}