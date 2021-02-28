import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Item {
  
  Color color;
  String name;
  int price;
  bool checked;
  
  Item.creat ({@required this.color, @required this.name, @required this.price}){
    checked = false;
  }
}
