import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget{

  final Product product;

  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    final avatar = product.imagemUrl == null || product.imagemUrl.isEmpty
      ? CircleAvatar(child: Icon(Icons.add_a_photo))
      : CircleAvatar(backgroundImage: NetworkImage(product.imagemUrl));
    return ListTile(
      leading: avatar,
      title: Text(product.nome),
      subtitle: Text(product.descricao),
      trailing: Container(
          width: 100,
          child: Row(
          children: <Widget> [
            IconButton(icon: Icon(Icons.edit), color: Colors.green, onPressed: () {},),
            IconButton(icon: Icon(Icons.delete), color: Colors.red, onPressed: () {},),
          ],
        )
      ),
    );
  }
}