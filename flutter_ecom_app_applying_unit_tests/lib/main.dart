import 'package:flutter/material.dart';
import 'package:flutter_ecom_app_applying_unit_tests/UI/app_theme.dart';
import 'package:flutter_ecom_app_applying_unit_tests/UI/views/product_list_view.dart';
import 'package:flutter_ecom_app_applying_unit_tests/helpers/dependency_assembly.dart';

void main() {
  setupDependencyAssembler();

  runApp(ShopNBuyApp());
}

class ShopNBuyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.data,
      home: ProductListView(),
    );
  }
}
