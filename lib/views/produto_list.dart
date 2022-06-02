import 'package:estagio/components/produto_tile.dart';
import 'package:estagio/data/produtos_ficticios.dart';
import 'package:estagio/provider/produtos.dart';
import 'package:estagio/routes/app_rotas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProdutoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Produtos produtos = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed(
              AppRotas.PRODUTO_FROM
            );
          },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: produtos.count,
          itemBuilder: (ctx, i) => ProdutoTile(produtos.byIndex(i)),
      ),
    );
  }
}