import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  TextEditingController controller;
  final String rotulo;
  final String ajuda;
  TextInputType tipoInput;

  Editor({this.controller, this.rotulo, this.ajuda, this.tipoInput});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: TextField(
        controller: this.controller,
        decoration: InputDecoration(
          labelText: this.rotulo,
          hintText: this.ajuda,
        ),
        keyboardType: this.tipoInput,
      ),
    );
  }
}
