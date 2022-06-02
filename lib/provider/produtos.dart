import 'dart:math';

import 'package:estagio/data/produtos_ficticios.dart';
import 'package:estagio/models/produto.dart';
import 'package:flutter/material.dart';

class Produtos with ChangeNotifier {
  final Map<String, Produto> itens = {...produtos_ficticios};

  List<Produto> get all {
    return [...itens.values];
  }

  int get count {
    return itens.length;
  }

  Produto byIndex(int i) {
    return itens.values.elementAt(i);
  }

  void put(Produto produto) {
    if(produto == null) {
      return;
    }

    if(produto.id != null &&
       produto.id.trim().isEmpty &&
       itens.containsKey(produto.id)) {
      itens.update(produto.id, (_) => Produto(
          id: produto.id,
          nome: produto.nome,
          descricao: produto.descricao,
          preco: produto.preco,
          data_cadastro: produto.data_cadastro,
          imagemUrl: produto.imagemUrl,
        ),
      );
    } else {
      final id = Random().nextDouble().toString();
      itens.putIfAbsent(
        id,
        () => Produto(
          id: id,
          nome: produto.nome,
          descricao: produto.descricao,
          preco: produto.preco,
          data_cadastro: produto.data_cadastro,
          imagemUrl: produto.imagemUrl,
        ),
      );
    }
    notifyListeners();
    }

    void remove(Produto produto) {
      if(produto != null && produto.id != null) {
        itens.remove(produto.id);
        notifyListeners();
      }
    }
}