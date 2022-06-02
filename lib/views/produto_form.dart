import 'package:flutter/material.dart';

class ProdutoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final form = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Produto'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              form.currentState?.save();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: form,
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Descricao'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Preço'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Data do cadastro'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Imagem'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}