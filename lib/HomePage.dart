import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFC0CA33),
          title: Text("Vida Natural"),
        ),
        body: Card(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.backpack),
                title: Text("Estoques"),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Vendas"),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.attach_money),
                title: Text("Financeiro"),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Parceiros"),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text("Tabelas"),
                trailing: Icon(Icons.arrow_right),
              ),
            ],
          ),
        ));
  }
}
