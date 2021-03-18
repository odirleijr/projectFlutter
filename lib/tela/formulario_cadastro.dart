import 'confirma_cadastro.dart';
import '../modulos/cadastro.dart';
import 'package:flutter/material.dart';
import '../componentes/editor.dart';

class FormularioCadastro extends StatelessWidget {
  final TextEditingController _controleCampoNome = TextEditingController();
  final TextEditingController _controledeCampoCpf = TextEditingController();
  final TextEditingController _controleCampoEmail = TextEditingController();
  final TextEditingController _controleCampoTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controller: this._controleCampoNome,
              rotulo: "Nome",
              ajuda: "Nome",
              tipoInput: TextInputType.text,
            ),
            Editor(
              controller: this._controledeCampoCpf,
              rotulo: "CPF",
              ajuda: "000.000.000.00",
              tipoInput: TextInputType.number,
            ),
            Editor(
              controller: this._controleCampoEmail,
              rotulo: "E-mail",
              ajuda: "fulano@ciclano.com",
              tipoInput: TextInputType.text,
            ),
            Editor(
              controller: this._controleCampoTelefone,
              rotulo: "Telefone",
              ajuda: "(00)1234-5678",
              tipoInput: TextInputType.number,
            ),
            RaisedButton(
              onPressed: () {
                var nome = this._controleCampoNome.text;
                var cpf = this._controledeCampoCpf.text;
                var email = this._controleCampoEmail.text;
                var telefone = this._controleCampoTelefone.text;

                Cadastro cadastro = Cadastro(nome, cpf, email, telefone);

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ConfirmaCadastro(cadastro);
                }));
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
