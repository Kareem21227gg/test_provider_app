import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/item_list_controller.dart';
import 'screens/catalog.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ItemListController>.value(
      value: ItemListController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Catalog(),
      ),
    );
  }
}

