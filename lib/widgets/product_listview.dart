import 'package:flutter/material.dart';
import 'package:flutter_watch_product/provider/products_provider.dart';
import 'package:flutter_watch_product/widgets/product_list_item.dart';
import 'package:provider/provider.dart';

class ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final products = Provider.of<Products>(context).productLists;

    return ListView.builder(
      itemCount: products==null ? 0 : products.length,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index)=> ProductListItem(
        name: products[index].name,
        price: products[index].price,
        thumb: products[index].thumb,
        productId: products[index].productId,
      ),

    );
  }
}
