import 'package:flutter_mobx_weekend/feature/productList/model/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  INetworkManager? manager;
  setUp(() {
   const String baseUrl = "https://jsonplaceholder.typicode.com/posts/1/comments";
    manager = NetworkManager(options: BaseOptions(baseUrl: baseUrl));
  });

  test('Sample Test', () async {
    final response = await manager?.send<ProductModel, List<ProductModel>>('', parseModel: ProductModel(), method: RequestType.GET);

    expect(response, isNotNull);
  });
}
