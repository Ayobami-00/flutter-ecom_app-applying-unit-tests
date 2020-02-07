import 'package:get_it/get_it.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/services/api.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/viewmodels/cart_model.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/viewmodels/product_list_model.dart';

GetIt dependencyAssembler = GetIt.instance;

void setupDependencyAssembler() {
  dependencyAssembler.registerLazySingleton(() => API());
  dependencyAssembler.registerFactory(() => ProductListModel());
  dependencyAssembler.registerFactory(() => CartModel());
}