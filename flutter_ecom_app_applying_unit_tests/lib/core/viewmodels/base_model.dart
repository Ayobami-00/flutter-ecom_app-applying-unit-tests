import 'package:flutter/material.dart';
import 'package:flutter_ecom_app_applying_unit_tests/core/enums/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void applyState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
