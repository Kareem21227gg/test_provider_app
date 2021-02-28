import 'Model/cart.dart';
import 'Model/item.dart';
class CartController  {
  Cart cart = Cart();
  CartController( List<Item> itemList){
    _setCartList(itemList);
  }

  _setCartList (List<Item> itemList ){
    for(Item item in itemList){
      if(item.checked){
        cart.cartList.add(item);
      }
    }
     _totalPrice ();
  }
  void _totalPrice () {
    cart.totalPrice = 0;
    for(Item item in cart.cartList){
      cart.totalPrice +=item.price;
    }
  }
}