import 'package:flutter_alfabank/tela/formulario_cadastro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App()); //MaterialApp
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepPurple[700],
          accentColor: Colors.deepPurple[500],
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.deepPurple[800],
              textTheme: ButtonTextTheme.primary
          )
      ),
      home: FormularioCadastro(),
    );
  }
}