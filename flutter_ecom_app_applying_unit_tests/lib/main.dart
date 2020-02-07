import 'package:flutter/material.dart';
import 'package:flutter_ecom_app_applying_unit_tests/UI/app_theme.dart';
import 'package:flutter_ecom_app_applying_unit_tests/UI/views/product_list_view.dart';

void main() {
  // TODO 8: Setup Dependency Injection
  runApp(flutter_ecom_app_applying_unit_testsApp());
}

class flutter_ecom_app_applying_unit_testsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.data,
      home: ProductListView(),
    );
  }
}
