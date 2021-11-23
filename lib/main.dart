import 'package:bytebank/screens/lista_transferencia.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreen[600],
        accentColor: Colors.green[900],
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
