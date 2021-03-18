import 'package:flutter/material.dart';
import '../modulos/transferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova transferencia"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
            child: TextField(
              controller: this._controladorCampoNumeroConta,
              decoration:
                  InputDecoration(labelText: "Número Conta", hintText: "0000"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
            child: TextField(
              controller: this._controladorCampoValor,
              decoration:
                  InputDecoration(labelText: "valor", hintText: "00.00"),
            ),
          ),
          RaisedButton(
            onPressed: () {
              var numeroConta = this._controladorCampoNumeroConta.text;
              var valor = this._controladorCampoValor.text;

              Transferencia transferencia =
                  Transferencia(double.tryParse(valor), numeroConta);
              debugPrint('$transferencia');
            },
            child: Text("Confirmar"),
          ),
        ],
      ),
    );
  }
}
