import 'package:flutter/material.dart';
import '../modulos/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  ItemTransferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(this.transferencia.valor.toString()),
        subtitle: Text("conta: ${transferencia.conta}"),
      ),
    );
  }
}
