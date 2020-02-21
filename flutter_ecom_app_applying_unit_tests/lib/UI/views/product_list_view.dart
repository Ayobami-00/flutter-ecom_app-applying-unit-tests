import 'package:flutter/material.dart';
import 'package:flutter_ecom_app_applying_unit_tests/UI/views/base_view.dart';
import 'package:flutter_ecom_app_applying_unit_tests/UI/widgets/cart_count_badge.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/enums/view_state.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/viewmodels/cart_model.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/viewmodels/product_list_model.dart';
import 'package:flutter_ecom_app_applying_unit_tests/helpers/constants.dart';
import 'package:flutter_ecom_app_applying_unit_tests/ui/widgets/product_list.dart';

import 'cart_view.dart';

class ProductListView extends StatelessWidget {
  Widget _buildCartButton(BuildContext context, CartModel cartModel) {
    return Stack(
      children: <Widget>[
        IconButton(
            icon: Icon(Icons.shopping_cart),
            splashColor: Colors.blue,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => CartView(model: cartModel)),
              );
            }),
        cartModel.cartSize != 0
            ? CartCountBadge(cartModel.cartSize)
            : Container()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<CartModel>(
      onModelReady: (cartModel) => cartModel.getCart(),
      builder: (context, cartModel, child) => BaseView<ProductListModel>(
            onModelReady: (model) => model.getProducts(),
            builder: (context, model, child) => Scaffold(
                  backgroundColor: Colors.grey.shade50,
                  appBar: AppBar(
                    title: Text(ViewTitle.ProductList),
                    actions: <Widget>[_buildCartButton(context, cartModel)],
                  ),
                  body: model.state == ViewState.Busy
                      ? Center(child: CircularProgressIndicator())
                      : ProductList(model.products, cartModel),
                ),
          ),
    );
  }
}
