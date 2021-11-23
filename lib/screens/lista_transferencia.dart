import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario_transferencia.dart';

const _tituloAppBar = 'Transferências';

class ListaTransferencias extends StatefulWidget{
  final List<Transferencia?> _transferencias = List.empty(growable: true);


  @override
  State<StatefulWidget> createState(){
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice){
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia!);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return FormularioTransferencia();
          })).then((transferenciaRecebida) {
              _atualiza(transferenciaRecebida);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _atualiza(Transferencia? transferenciaRecebida) {
    if(transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
    }
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;


  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}