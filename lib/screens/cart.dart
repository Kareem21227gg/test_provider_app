import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerEx/controller/item_list_controller.dart';
import 'package:providerEx/controller/cart_controller.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CartController cartController = CartController(
        Provider.of<ItemListController>(context, listen: false).itemList);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: cartController.cart.cartList.map<Widget>((item) {
                return Container(
                  child: Text(item.name ,style: TextStyle(color: Colors.yellow,fontSize: 40),),
                );
              }).toList(),
            ),
            Text("total price : ${cartController.cart.totalPrice.toString()}",style: TextStyle(color: Colors.yellowAccent,fontSize: 60),),
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
