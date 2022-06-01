import 'package:flutter/material.dart';

class Product {
  final String id;
  final String nome;
  final String descricao;
  final String preco;
  final String data_cadastro;
  final String imagemUrl;

  const Product({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.data_cadastro,
    required this.imagemUrl,
});
}