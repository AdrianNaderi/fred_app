import 'package:flutter/material.dart';
import 'package:fred_app/cms/add_new_spot/cms_add_spot.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newSpotController = ChangeNotifierProvider((ref) => NewSpotController());

class NewSpotController extends ChangeNotifier {
//USER INPUT-----------------------------------------------------------------
  Map<String, String> userInput = {
    CMSNewItem.name["userInputKey"]!: "",
    CMSNewItem.address["userInputKey"]!: "",
    // CMSNewItem.area["userInputKey"]!: "",
    // CMSNewItem.title["userInputKey"]!: "",
    // CMSNewItem.description["userInputKey"]!: "",
  };

  void updateUserInput({
    required String key,
    required String value,
  }) {
    userInput[key] = value;
    notifyListeners();
  }

  bool hasEmptyValues() {
    return userInput.values.any((element) => element.isEmpty);
  }

  void resetState() {
    userInput.updateAll(
      (key, value) => value = "",
    );
    notifyListeners();
  }

//ADD NEW SPOT-----------------------------------------------------------------
  List<Map<String, String>> newItems = [{}];

  void addItem() {
    newItems.add({
      "name": userInput["Name"]!,
      "address": userInput["Address"]!,
    });

    notifyListeners();
  }
}
