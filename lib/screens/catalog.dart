import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerEx/controller/item_list_controller.dart';
import 'cart.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ItemListController itemLestController = Provider.of<ItemListController>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ( context) => Cart(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.ac_unit),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return (Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: itemLestController.itemList[index].color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    itemLestController.itemList[index].name,
                    style: TextStyle(fontSize: 24),
                  ),
                  Consumer<ItemListController>(
                    builder: (context, value , __ ){return(
                     InkWell(
                      onTap: () {
                        value.ChangeState(index);
                      },
                      child: Icon( value.itemList[index].checked?Icons.check:Icons.add,size: 32,),
                    )
                    ); 
                  },
                  )
                ],
              ),
            ),
          ));
        },
        itemCount: itemLestController.itemList.length,
      ),
    );
  }
}
