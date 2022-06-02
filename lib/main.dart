import 'package:estagio/provider/produtos.dart';
import 'package:estagio/routes/app_rotas.dart';
import 'package:estagio/views/produto_form.dart';
import 'package:estagio/views/produto_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Produtos(),
          )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRotas.HOME: (_) => ProdutoList(),
          AppRotas.PRODUTO_FROM: (_) => ProdutoForm()
        },
      ),
    );
  }
}

