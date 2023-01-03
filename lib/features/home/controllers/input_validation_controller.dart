import 'package:flutter/material.dart';
import 'package:fred_app/cms/add_new_spot/cms_add_spot.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final inputValidationController =
    ChangeNotifierProvider((ref) => InputValidationController());

class InputValidationController extends ChangeNotifier {
  bool hasPressedAddButton = false;

  void updateHasPressedAddButton(bool state) {
    hasPressedAddButton = state;
    notifyListeners();
  }

//INPUT VALIDATION-----------------------------------------------------------------
  Map<String, bool> hasValue = {
    CMSNewItem.name["userInputKey"]!: false,
    CMSNewItem.address["userInputKey"]!: false,
    // CMSNewItem.area["userInputKey"]!: false,
    // CMSNewItem.title["userInputKey"]!: false,
    // CMSNewItem.description["userInputKey"]!: false,
  };
  void updateHasValue({
    required String key,
    required bool value,
  }) {
    hasValue[key] = value;
    notifyListeners();
  }

//RESET------------------------------------------------------------------------------
  void resetState() {
    hasValue.updateAll((key, value) => value = false);
    hasPressedAddButton = false;
    notifyListeners();
  }
}
