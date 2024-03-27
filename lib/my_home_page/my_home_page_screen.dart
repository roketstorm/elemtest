import 'package:elementary/elementary.dart';
import 'package:elemtest/my_home_page/my_home_page_wm.dart';
import 'package:flutter/material.dart';

class MyHomePageScreen extends ElementaryWidget<MyHomePageWM> {
  const MyHomePageScreen({
    Key? key,
    WidgetModelFactory wmFactory = myHomePageWMFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(MyHomePageWM wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elemetary Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: wm.counter,
              builder: (context, value, child) => Text(
                '$value',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: wm.addValueToCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
