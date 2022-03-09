import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_weekend/core/base_view.dart';
import 'package:flutter_mobx_weekend/feature/productList/viewModel/product_view_model.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = "Products";
    return BaseView<ProductViewModel>(
      viewModel: ProductViewModel(),
      onModelReady: (model) {
        model.init();
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, ProductViewModel viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Observer(builder: (_) {
            return viewModel.isLoading ? _buildPage(viewModel) : _progressIndicator();
          }),
        );
      },
    );
  }

  GridView _buildPage(ProductViewModel viewModel) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: viewModel.productModel?.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildCard(viewModel, index);
      },
    );
  }

  Card _buildCard(ProductViewModel viewModel, int index) {
    return Card(
      child: Column(
        children: [
          _buildImage(viewModel, index),
          _descriptionText(viewModel, index),
          _iconAndTextRow(viewModel, index),
        ],
      ),
    );
  }

  Expanded _buildImage(ProductViewModel viewModel, int index) => Expanded(child: Image.network(viewModel.productModel?[index].image ?? ""));

  Text _descriptionText(ProductViewModel viewModel, int index) {
    return Text(
      viewModel.productModel?[index].description ?? "",
      overflow: TextOverflow.ellipsis,
    );
  }

  Row _iconAndTextRow(ProductViewModel viewModel, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(onPressed: () {}, icon: const Icon(Icons.star), label: Text(viewModel.productModel?[index].rating?.rate.toString() ?? "")),
        Text("${viewModel.productModel?[index].price.toString()} \$")
      ],
    );
  }
}

Center _progressIndicator() => const Center(child: CircularProgressIndicator());
