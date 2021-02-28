import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'Model/item.dart';

class ItemListController  extends ChangeNotifier{
  List<Item> itemList = List<Item>();
  Item _item;
  Random _random = Random();


   ItemListController(){
     CreateItemList();
   }
  //this will be done by API in another class in real app
  void CreateItemList() {
    for (int i = 0; i < 20; i++) {
      _item = Item.creat(
        color: Color.fromARGB(
          255,
          _random.nextInt(255),
          _random.nextInt(255),
          _random.nextInt(255),
        ),
        name: "item ${i+1}",
        price: _random.nextInt(10)
      );
      itemList.add(_item);
    }
  }
  void ChangeState(int index){
    if(itemList[index].checked){
      //todo: remove frome the cart
      itemList[index].checked = false;
      
    }
    else{
      itemList[index].checked = true;
    }
     notifyListeners();
  }

}
