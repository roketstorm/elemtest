import 'package:elementary/elementary.dart';
import 'package:elemtest/my_home_page/my_home_page_model.dart';
import 'package:elemtest/my_home_page/my_home_page_screen.dart';
import 'package:flutter/material.dart';

/// Factory for [MyHomePageWM].
MyHomePageWM myHomePageWMFactory(
  BuildContext context,
) {
  return MyHomePageWM(
    MyHomePageModel(
        // Use Provider or GetIt to insert dependencies
        ),
  );
}

/// Widget model for [MyHomePageScreen].
class MyHomePageWM extends WidgetModel<MyHomePageScreen, MyHomePageModel> {
  /// Counter number notifier
  ValueNotifier<int> counter = ValueNotifier(0);

  /// Create an instance [MyHomePageWM].
  MyHomePageWM(super._model);

  /// Make some action on listenable variable
  void addValueToCounter() {
    counter.value += 1;
  }

  /// Runs at the start of creating WM
  @override
  void initWidgetModel() {
    // Load data from model
    // myData = model.getData();
    super.initWidgetModel();
  }
}
