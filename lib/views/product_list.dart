import 'package:estagio/components/produtc_tile.dart';
import 'package:estagio/provider/produts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Produts products = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de produtos'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add),onPressed: () {},)
        ],
      ),
      body: ListView.builder(
        itemCount: products.count,
        itemBuilder: (ctx, i) => ProductTile(products.byIndex(i)),
    ),
   );
  }
}