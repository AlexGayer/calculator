import 'package:calculator_app/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  var display = "0";

  void onButtonClick(ButtonClick click) {
    if (display == "0") {
      display = "";
    }

    if (click is CommonButtonClick) {
      display += click.value;
    } else if (click is ClearButtonClick) {
      display = "";
    } else if (click is ClearEntryButtonClick) {
      display = "";
    } else if (click is EqualButtonClick) {
      final v = display.interpret();
      display = "$v";
    }
    notifyListeners();
  }
}
