import 'package:flutter_ecom_app_applying_unit_tests/core/enums/view_state.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/models/product.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/services/api.dart';
import 'package:flutter_ecom_app_applying_unit_tests/helpers/dependency_assembly.dart';

import 'base_model.dart';

class ProductListModel extends BaseModel {
  API api = dependencyAssembler<API>();

  List<Product> _products;

  List<Product> get products {
    return _products;
  }

  Future getProducts() async {
    applyState(ViewState.Busy);
    _products = await api.getProducts();
    applyState(ViewState.Idle);
  }
}