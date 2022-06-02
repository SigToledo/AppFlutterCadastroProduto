import 'package:estagio/models/produto.dart';
import 'package:estagio/routes/app_rotas.dart';
import 'package:flutter/material.dart';

class ProdutoTile extends StatelessWidget {

  final Produto produto;

  const ProdutoTile(this.produto);

  @override
  Widget build(BuildContext context) {
    final imagem = produto.imagemUrl == null || produto.imagemUrl.isEmpty
      ? CircleAvatar(child: Icon(Icons.add_a_photo))
      : CircleAvatar(backgroundImage: NetworkImage(produto.imagemUrl));
    return ListTile(
        leading: imagem,
        title: Text(produto.nome),
        subtitle: Text(produto.descricao),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.edit),
                color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      AppRotas.PRODUTO_FROM,
                      arguments: produto,
                    );
                  },
              ),
              IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                  onPressed: () {},
              ),
            ],
          ),
        )
      );
    }
  }