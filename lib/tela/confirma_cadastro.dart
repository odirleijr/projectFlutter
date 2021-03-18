import '../modulos/cadastro.dart';
import '../tela/lista_transferencia.dart';
import 'package:flutter/material.dart';

class ConfirmaCadastro extends StatelessWidget {
  final Cadastro cadastro;

  ConfirmaCadastro(this.cadastro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmar cadastro"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            child: ListView(children: [
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Nome: ${this.cadastro.nome}"),
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("CPF: ${this.cadastro.cpf}"),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Email: ${this.cadastro.email}"),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Tel.: ${this.cadastro.telefone}"),
              ),
            ]),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) {
                  return ListaTransferencia();
                }),
                ModalRoute.withName('lista_transferencia'),
              );
            },
            child: Text("Confirmar"),
          ),
        ],
      ),
    );
  }
}
