import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lista_tarefas/data/data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _controllerInput = TextEditingController();
  List _lista = [];
  Map<String, dynamic> _lastRemoved;
  int _lastRemovedPos;
  Data banco = Data();

  @override
  void initState() {    
    super.initState();

    banco.readData().then((data){
      setState(() {
        _lista = json.decode(data);  
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        centerTitle: true,
      ),

      body: Column(                
        children: <Widget>[

          //* Formulário do APP
          Row(
            children: <Widget>[

              //* Input do Texto
              Expanded(                
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: _controllerInput,
                    decoration: InputDecoration(
                      labelText: "Tarefa"
                    ),
                  ),
                ),
              ),

              //* Botão de Adicionar a tarefa
              RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text("ADD", style: TextStyle(color: Colors.white),),
                onPressed: (){
                  setState(() {
                    Map<String, dynamic> novoItem = Map();
                    novoItem["title"] = _controllerInput.text;
                    _controllerInput.text = "";
                    novoItem["ok"] = false;
                    _lista.add(novoItem);

                    banco.saveData(_lista);
                  });                  
                },  
              )
            
            ],
          ),

          //* Lista das Tarefas
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10),
              itemCount: _lista.length,
              itemBuilder: _buildItem,
            ),
          ),
        
        ],

      ),
    
    );
  }

  Widget _buildItem(context, index){
    return Dismissible(
      key: new Key(DateTime.now().millisecondsSinceEpoch.toString()),

      background: new Container(
        color: Colors.red.withOpacity(0.5),
        child: new Align(
          alignment: new Alignment(-0.9, 0.0),
          child: new Icon(Icons.delete, color: Colors.white,),
        ),
      ),
      
      direction: DismissDirection.startToEnd,
      
      child: CheckboxListTile(      
        title: Text(_lista[index]["title"]),
        secondary: CircleAvatar(
          child: Icon(
            _lista[index]["ok"] ? Icons.check : Icons.error
          ),
        ),
        value: _lista[index]["ok"],
        onChanged: (c){
          setState(() {
            _lista[index]["ok"] = c;
            banco.saveData(_lista); 
          });
        },                      
      ),

      onDismissed: (direction){
        setState(() {
          _lastRemoved = Map.from(_lista[index]);
          _lastRemovedPos = index;
          _lista.removeAt(index);

          banco.saveData(_lista);

          final snack = new SnackBar(
            content: new Text("Tarefa \"${_lastRemoved["title"]}\" removida!"),
            action: new SnackBarAction(
              label: "DESFAZER",
              onPressed: (){
                setState(() {
                  _lista.insert(_lastRemovedPos, _lastRemoved);
                  banco.saveData(_lista);
                });
              },
            ),
            duration: Duration(seconds: 3),
          );

          Scaffold.of(context).showSnackBar(snack);
        });
      },
    
    );
  }

}